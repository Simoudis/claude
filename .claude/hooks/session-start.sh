#!/bin/bash
# Lets the Playwright MCP browser (see /.mcp.json) open HTTPS pages in
# Claude Code on the web. Chromium trusts only its NSS store, not the system
# CA bundle, so the environment's egress CAs are copied into NSS.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

bundle=/root/.ccr/ca-bundle.crt
nssdb="$HOME/.pki/nssdb"
[ -f "$bundle" ] || exit 0

if ! command -v certutil >/dev/null 2>&1; then
  apt-get install -y -q libnss3-tools >/dev/null 2>&1 \
    || { apt-get update -q >/dev/null 2>&1 && apt-get install -y -q libnss3-tools >/dev/null 2>&1; }
fi

mkdir -p "$nssdb"
[ -f "$nssdb/cert9.db" ] || certutil -N -d "sql:$nssdb" --empty-password

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
awk -v d="$tmp" '/BEGIN CERT/{n++} n{print > (d "/" n ".pem")}' "$bundle"

for pem in "$tmp"/*.pem; do
  subject=$(openssl x509 -in "$pem" -noout -subject 2>/dev/null) || continue
  case "$subject" in
    *Anthropic*) ;;
    *) continue ;;
  esac
  fp=$(openssl x509 -in "$pem" -noout -fingerprint -sha256 | cut -d= -f2 | tr -d :)
  certutil -A -d "sql:$nssdb" -n "ccr-${fp:0:16}" -t "C,," -i "$pem"
done

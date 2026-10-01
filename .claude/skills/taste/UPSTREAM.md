# Upstream

Vendored from https://github.com/senlindesign/taste-skill at commit
`6dce223f2f5665d3636ca9a44ec3a7aa1322a9b8` (MIT, per upstream README).

Only the runtime files are copied (`SKILL.md`, `references/`, `evals/`);
the upstream `docs/` landing-page assets (~10 MB) are omitted.

Requires the Playwright MCP server:
`claude mcp add playwright -s user -- npx -y @playwright/mcp@latest --isolated`

# Upstream

Vendored from https://github.com/senlindesign/taste-skill at commit
`6dce223f2f5665d3636ca9a44ec3a7aa1322a9b8` (MIT, per upstream README).

Only the runtime files are copied (`SKILL.md`, `references/`, `evals/`);
the upstream `docs/` landing-page assets (~10 MB) are omitted.

Requires the Playwright MCP server:
`claude mcp add playwright -s user -- npx -y @playwright/mcp@latest --isolated`

In this repo the server is configured in `/.mcp.json` for Claude Code on the
web: headless, `--no-sandbox` (sessions run as root), pinned to
`@playwright/mcp@0.0.83`, using the preinstalled Chromium. Set
`PLAYWRIGHT_CHROMIUM` to point at a different browser locally. The
environment's network policy must allow each site you analyze.

Local change: removed the trailing `;` after the function in
`references/extract.js`. With it, `browser_evaluate` in
`@playwright/mcp@0.0.83` fails with `SyntaxError: Unexpected token ';'`.

#!/bin/sh
set -e

echo "Activating feature 'metamcp'"

if command -v claude &> /dev/null; then
    echo "claude executable found. Configuring MetaMCP..."
    claude mcp add metamcp -e METAMCP_API_KEY="${METAMCPAPIKEY}" -e METAMCP_API_BASE_URL="${METAMCPAPIURL}" npx -y @metamcp/mcp-server-metamcp@latest
else
    echo "Warning: 'claude' command not found. Skipping MetaMCP configuration." >&2
fi

echo "metamcp feature installation finished."

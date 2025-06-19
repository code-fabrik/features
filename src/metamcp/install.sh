#!/bin/sh
set -e

echo "Activating feature 'metamcp'"

# Wait a moment for claude to be available if installed by previous feature
sleep 1

if ! command -v claude >/dev/null 2>&1; then
    echo "claude executable not found. Exiting."
    exit 1
fi
  
claude mcp add metamcp -e METAMCP_API_KEY="${METAMCPAPIKEY}" -e METAMCP_API_BASE_URL="${METAMCPAPIURL}" -- npx @metamcp/mcp-server-metamcp@latest

if [ $? -eq 0 ]; then
    echo "MetaMCP installed successfully."
else
    echo "Failed to install MetaMCP."
    exit 1
fi

echo "metamcp feature installation finished."

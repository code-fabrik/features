#!/bin/bash

set -e

source dev-container-features-test-lib

# Test if Claude CLI is installed
if ! command -v claude >/dev/null 2>&1; then
    echo "claude command not found"
    exit 1
fi

echo "Claude CLI found, checking version:"
claude --version

# Test if npm/npx is available (required for MetaMCP)
if ! command -v npx >/dev/null 2>&1; then
    echo "npx command not found"
    exit 1
fi

echo `claude mcp list`

check "Checking metamcp installation" bash -c "claude mcp list | grep metamcp"

echo "MetaMCP installation test passed!"
exit 0

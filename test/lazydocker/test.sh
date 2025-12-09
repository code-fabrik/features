#!/bin/bash

# This test file will be executed against an auto-generated devcontainer.json that
# includes the 'lazydocker' feature with no options.
#
# Eg:
# {
#    "image": "<..some-base-image...>",
#    "features": {
#      "lazydocker": {}
#    }
# }
#
# Thus, the value of all options will fall back to the default value in 
# the feature's 'devcontainer-feature.json'.
# For the 'lazydocker' feature, that means the default version is '0.24.2'.
# 
# This test can be run with the following command (from the root of this repo):
#    devcontainer features test \
#               --features lazydocker \
#               --base-image mcr.microsoft.com/devcontainers/base:debian .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.

check "lazydocker command exists" command -v lazydocker

check "lazydocker is executable" test -x "$(which lazydocker)"

check "lazydocker version command works" lazydocker --version

check "lazydocker is in PATH" which lazydocker

check "lazydocker is installed in /usr/local/bin" test -f /usr/local/bin/lazydocker

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults


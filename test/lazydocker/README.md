# lazydocker Feature Tests

This directory contains tests for the lazydocker devcontainer feature.

## Test Files

- **test.sh** - Basic test with default options
- **test_with_version.sh** - Test with specific version (0.24.2)
- **scenarios.json** - Test scenarios configuration

## Running Tests

### Prerequisites

Install the devcontainer CLI:

```bash
npm install -g @devcontainers/cli
```

### Run All Tests

From the repository root:

```bash
devcontainer features test \
    --features lazydocker \
    --base-image mcr.microsoft.com/devcontainers/base:debian \
    .
```

### Run Specific Test

```bash
devcontainer features test \
    --features lazydocker \
    --base-image mcr.microsoft.com/devcontainers/base:debian \
    --test test \
    .
```

### Test on Different Base Images

Test on Ubuntu:
```bash
devcontainer features test \
    --features lazydocker \
    --base-image mcr.microsoft.com/devcontainers/base:ubuntu \
    .
```

Test on Alpine (if supported):
```bash
devcontainer features test \
    --features lazydocker \
    --base-image mcr.microsoft.com/devcontainers/base:alpine \
    .
```

## What the Tests Verify

1. ✅ lazydocker command is installed and in PATH
2. ✅ lazydocker binary is executable
3. ✅ lazydocker --version command works
4. ✅ lazydocker is installed in /usr/local/bin
5. ✅ Correct version is installed (when specified)

## Architecture Support

The feature should work on:
- x86_64 (amd64)
- aarch64 (arm64)
- armv7l
- armv6l
- i686/i386

## Troubleshooting

If tests fail, check:
1. Docker is running
2. You have internet access to download from GitHub
3. The GitHub release exists for your architecture
4. The devcontainer CLI is properly installed

## Manual Testing

You can also test manually by creating a devcontainer with:

```json
{
  "image": "mcr.microsoft.com/devcontainers/base:debian",
  "features": {
    "./src/lazydocker": {
      "version": "0.24.2"
    }
  }
}
```

Then rebuild the container and run:
```bash
lazydocker --version
```


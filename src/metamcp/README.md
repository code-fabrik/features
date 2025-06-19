
# MetaMCP (meta-mcp)

A feature to add the MetaMCP proxy

## Example Usage

```json
"features": {
    "ghcr.io/code-fabrik/features/meta-mcp:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| metamcpApiKey | API Key for MetaMCP. | string | - |
| metamcpApiUrl | API URL for MetaMCP. | string | host.docker.internal:12005 |

If you want to keep the API key for the MetaMCP server private, you can set the `METAMCP_API_KEY` environment variable
on your host and use `${localEnv:METAMCP_API_KEY}` for the setting.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](devcontainer-feature.json).  Add additional notes to a `NOTES.md`._

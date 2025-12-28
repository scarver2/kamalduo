# [Kamal](https://kamal-deploy.org/)

TODO: Add Kamal documentation: commands, configuration, debugging, environments, etc.

## Prerequisites

```bash
gem install kamal
```

## Initialize Kamal

```bash
kamal init
```

## Kamal Secrets
https://kamal-deploy.org/docs/commands/secrets/

### Using Bitwarden Secrets Manager CLI
https://bitwarden.com/help/secrets-manager-cli/#download-and-install

```bash
# Fetch all secrets that the machine account has access to
kamal secrets fetch --adapter bitwarden-sm all

# Fetch secrets from a project
kamal secrets fetch --adapter bitwarden-sm MyProjectID/all

# Extract the secret
kamal secrets extract REGISTRY_PASSWORD <SECRETS-FETCH-OUTPUT>
```
# [Kamal](https://kamal-deploy.org/)

TODO: Add Kamal documentation: commands, configuration, debugging, environments, etc.

## Bootstrapping and Environment-aware
Our Kamal environment is bootstrapped to use DotEnv's environment variables using the `bin/kamal` script. It will automatically install Kamal, if needed.

For example, to view Kamal's configuration in each environment:
```bash
bin/kamal config                  # uses .env.local
bin/kamal production config       # uses .env.production
bin/kamal staging config          # uses .env.staging if present
```

Included is an example `.env.template` file that can be used to create your own environment files.

A helper command is provided to print the resolved environment and `.env` filename:
```bash
bin/kamal env
```

## Initialize Kamal
TODO: Add Kamal initialization documentation
```bash
bin/kamal init
```

## Kamal Secrets
https://kamal-deploy.org/docs/commands/secrets/

### Using Bitwarden Secrets Manager CLI
https://bitwarden.com/help/secrets-manager-cli/#download-and-install

```bash
# Fetch all secrets that the machine account has access to
bin/kamal secrets fetch --adapter bitwarden-sm all

# Fetch secrets from a project
bin/kamal secrets fetch --adapter bitwarden-sm MyProjectID/all

# Extract the secret
bin/kamal secrets extract REGISTRY_PASSWORD <SECRETS-FETCH-OUTPUT>
```

Note:
Set your host IP address or domain name in config/deploy.yml in the proxy section.




# Sinatra Kamal Duo

This is a Sinatra Rack application that uses Kamal 2 to deploy to a VPS.

## Prerequisites

Install Kamal 2 gem globally. Don't use bundler.
```bash
gem install kamal
bundle install
```

Set the environment variables for your project using the `.env.template` file.
Use `bin/kamal` to access all Kamal commands using the environment variables.

A `.env.local` file is provided to test docker, kamal, and the Sinatra Rack application locally.

Recommended to add the following to your local `/etc/hosts` file to test locally:
```bash
grep -qE '^\s*127\.0\.0\.1\s+kamalduo\.local$' /etc/hosts \
  || echo '127.0.0.1  kamalduo.local' | sudo tee -a /etc/hosts > /dev/null
```

## Health Check
Our application has a health check endpoint at `/healthz` that Kamal will use to verify the application is running.

```bash
curl -i http://localhost:3000/healthz
```

## Debugging 

TODO: Instructions for debugging
```bash
# TODO: debugging commands
```
### Locally
TODO: Instructions for local debugging
```bash
# TODO: commands
```

### Remotely
TODO: Instructions for remote debugging
```bash
# TODO: commands
```

## Documentation

```
docs/
|-- [devops](docs/devops)
|    L--- [digital_ocean](docs/devops/digital_ocean.md)
|-- [hosting](docs/hosting)
|    L--- [nginx](docs/hosting/nginx.md)
|-- [secrets](docs/secrets)
|    L--- [bitwarden](docs/secrets/bitwarden.md)
|-- [docker](docs/docker.md)
|-- [github_actions](docs/github_actions.md)
L-- [kamal](docs/kamal.md)
```
Developed using Kamal 2.10.1.

## Credits

@2026 Stan Carver II, a1webconsulting.com

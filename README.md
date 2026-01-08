# Sinatra Kamal Duo

This repo demonstrates deploying a [Sinatra Rack application](https://sinatrarb.com) using [Kamal 2](https://kamal-deploy.org). Instructions are included how to deploy to popular VPSes.

## Prerequisites

Install Kamal 2 gem globally.
```bash
gem install kamal
```

## Instructions

Install the application's RubyGem dependecies.
```bash
bundle install
```

Set the environment variables for your project using the `.env.template` file.
Use `bin/kamal` to access all Kamal commands using the environment variables.

A `.env.local` file is provided to test docker, kamal, and the Sinatra Rack application locally.

### Recommendation
Recommended to add the following to your local `/etc/hosts` file to test locally:
```bash
grep -qE '^\s*127\.0\.0\.1\s+kamalduo\.local$' /etc/hosts \
  || echo '127.0.0.1  kamalduo.local' | sudo tee -a /etc/hosts > /dev/null
```

## The Kamal Advantage
### Health Check
Our application has a health check endpoint at `/healthz` that Kamal will use to verify the application is running.

```bash
curl -i http://localhost:3000/healthz
```

### Debugging 

TODO: Instructions for debugging
```bash
# TODO: debugging commands
```
#### Local Environment
TODO: Instructions for local debugging
```bash
# TODO: commands
```

#### Remote Environment
TODO: Instructions for remote debugging
```bash
# TODO: commands
```

## Documentation

```bash
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
Developed using [Kamal 2.10.1](https://github.com/basecamp/kamal/releases/tag/v2.10.1).

## Credits

@2026 Stan Carver II, [A1 Web Consulting](https://a1webconsulting.com)

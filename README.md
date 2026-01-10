# [Sinatra Kamal Duo](https://github.com/scarver2/kamalduo)

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

A `.env.local` file is provided to test Docker, Kamal, and the Sinatra Rack application locally.

### Recommendation
It is recommended you add a `kamalduo.local` entry to your local `/etc/hosts` file to test locally:
```bash
grep -qE '^\s*127\.0\.0\.1\s+kamalduo\.local$' /etc/hosts \
  || echo '127.0.0.1  kamalduo.local' | sudo tee -a /etc/hosts > /dev/null
```

## The Kamal Advantage
### Health Check
KamalDuo demonstrates a health check endpoint at `/healthz` that Kamal will use to verify the application is running.

```bash
curl -i http://localhost:9292/healthz
```

## Documentation

📦[docs](docs)<br />
 ┣ 📂[devops](docs/devops)<br />
 ┃ ┗ [GitHub Actions](docs/devops/github_actions.md)<br />
 ┣ 📂[hosting](docs/hosting)<br />
 ┃ ┣ [Digital Ocean](docs/devops/digital_ocean.md)<br />
 ┃ ┣ [Hetzner](docs/devops/hetzner.md)<br />
 ┃ ┣ [Vultr](docs/devops/vultr.md)<br />
 ┣ 📂[secrets](docs/secrets)<br />
 ┃ ┗ 📜[Bitwarden](docs/secrets/bitwarden.md)<br />
 ┣ 📜[Docker](docs/docker.md)<br />
 ┣ 📜[Kamal](docs/kamal.md)<br />
 ┗ 📜[NGINX](docs/hosting/nginx.md)<br />

Developed using [Kamal 2.10.1](https://github.com/basecamp/kamal/releases/tag/v2.10.1).

## Credits

@2026 [Stan Carver II](http://stancarver.com), [A1 Web Consulting](https://a1webconsulting.com)

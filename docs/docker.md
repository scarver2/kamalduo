# [Docker](https://www.docker.com)

TODO: Add Docker documentation

## Prerequisites

Install Docker CLI
```bash
brew install docker
```

## Dockerfile

```dockerfile
FROM ruby:2.7.2
RUN apt-get update -qq && apt-get install -y nodejs
RUN gem install bundler
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
CMD ["bundle", "exec", "rackup", "-p", "9292", "-E", "development"]
```

## Build

```bash
docker build -t kamalduo .
```

## Push

```bash
# TODO: variables
docker login -u _json_key -p "$JSON_KEY" https://index.docker.io/v1/
docker tag kamalduo:latest "gcr.io/$PROJECT_ID/kamalduo:latest"
docker push "gcr.io/$PROJECT_ID/kamalduo:latest"
```


# Local Operation

## Single Container via Docker Run command
```bash
docker run -it --rm --name kamalduo -p 3000:3000 kamalduo
```

## Multi Container via Docker Compose
```bash
docker compose up -d --build
docker compose ps
curl -i http://localhost:3000/healthz
```
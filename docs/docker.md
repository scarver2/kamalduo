# Docker

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
docker build -t kamal2 .
```

## Push

```bash
# TODO: variables
docker login -u _json_key -p "$JSON_KEY" https://index.docker.io/v1/
docker tag kamal2:latest "gcr.io/$PROJECT_ID/kamal2:latest"
docker push "gcr.io/$PROJECT_ID/kamal2:latest"
```
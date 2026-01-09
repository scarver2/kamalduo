# [Docker](https://www.docker.com)

TODO: Add Docker documentation

## Prerequisites

Install Docker CLI
```bash
brew install docker
```

## Dockerfile

View file here: [Dockerfile](Dockerfile)

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

## Launch Container via Docker Run command
```bash
docker run -it --rm --name kamalduo -p 3000:3000 kamalduo
```

## Launch Container via Docker Compose command
```bash
docker compose up --build
```

## Multi Container via Docker Compose
```bash
docker compose up -d --build
docker compose ps
curl -i http://localhost:3000/healthz
```
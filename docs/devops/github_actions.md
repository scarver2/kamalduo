# [GitHub Actions](https://github.com/features/actions)

TODO: Add GitHub Actions documentation

## Prerequisites

Install the GitHub CLI
```bash
brew install gh
```

```yaml
# .github/workflows/deploy.yml
name: Deploy

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Kamal
        uses: scarver2/kamal-action@v1

      - name: Deploy
        run: kamal deploy
```

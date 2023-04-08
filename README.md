# Introduction

This repository has instructions to launch the Maintenace Mitra application.

- [Introduction](#introduction)
  - [Launch](#launch)

## Launch

1. Clone the repository

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
```

2. Set-up and launch platform components.

```bash
# Start platform components
cd ${PROJECT_HOME}/platform
docker compose up -d
# Create topics
cd ${PROJECT_HOME}/init
docker compose up -d
```

3. Login to GitHub Container Registry with `docker` CLI so that container images can be downloaded.

> [Contact us](https://maintenance-mitra.com/signup) for values of `USERNAME` and `CR_PAT`

```bash
# Setup environment variables
export USERNAME=
export CR_PAT=
echo $CR_PAT | docker login ghcr.io -u $USERNAME --password-stdin
```

4. Start-up application.

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose --env-file deploy.env up -d
```

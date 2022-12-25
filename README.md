# Introduction

This repository has instructions to launch the Maintenace Mitra application.

- [Introduction](#introduction)
  - [Launch](#launch)
    - [Clone repository](#clone-repository)
    - [Platform set-up](#platform-set-up)
    - [Login to GHCR](#login-to-ghcr)
    - [Production version](#production-version)

## Launch

### Clone repository

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
```

### Platform set-up

```bash
# Start platform components
cd ${PROJECT_HOME}/platform
docker compose up -d
# Create topics
cd ${PROJECT_HOME}/init
docker compose up -d
```

### Login to GHCR

```bash
# Setup environment variables
export CR_PAT=
export USERNAME=
echo $CR_PAT | docker login ghcr.io -u $USERNAME --password-stdin
```

### Production version

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose --env-file deploy.env up -d
```

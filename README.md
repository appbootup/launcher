# Introduction

This repository has instructions to launch the `mitra` application.

- [Introduction](#introduction)
  - [Getting started](#getting-started)
    - [Clone repository](#clone-repository)
    - [Configuration](#configuration)
  - [Launch](#launch)
    - [Platform set-up](#platform-set-up)
    - [Login to GHCR](#login-to-ghcr)
    - [Development version](#development-version)
    - [Production version](#production-version)

## Getting started

### Clone repository

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
```

### Configuration

For complete details on all configuration files, see [here](docs/config.md). These environment variables should be kept in a folder as set in `ENV_HOME` variable in `prod.env` file. By default, `ENV_HOME` is set to `$HOME/env`.

1. Configure the following environment files for corresponding container images before launching the development or production version.

| File name      | Conatainer image    |
| -------------- | ------------------- |
| `alarms.env`   | `nsubrahm/alarms`   |
| `alerts.env`   | `nsubrahm/alerts`   |
| `cleaner.env`  | `nsubrahm/cleaner`  |
| `limits.env`   | `nsubrahm/limits`   |
| `merger.env`   | `nsubrahm/merger`   |
| `streamer.env` | `nsubrahm/streamer` |

2. Configure either of the following environment files depending on version to be launched - development or production.

| File name  | Version     |
| ---------- | ----------- |
| `dev.env`  | Development |
| `prod.env` | Production  |

## Launch

To launch the application, follow the steps below.

1. Set-up platform.
2. Login to GHCR.
3. Launch - development version or production version.

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

### Development version

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose -f docker-compose.dev.yaml --env-file dev.env up -d
```

### Production version

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose -f docker-compose.prod.yaml --env-file prod.env up -d
```

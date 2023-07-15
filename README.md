# Introduction

This repository has instructions to launch the Maintenace Mitra application.

- [Introduction](#introduction)
  - [Launch](#launch)
    - [Platform](#platform)
    - [Application](#application)

## Launch

Launching of **Maintenance Mitra** is a two-step process.

1. Platform
2. Application

Start with cloning the repository with the following command.

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
```

### Platform

> To configure the launch of the platform, see [Platform configuration guide](./platform/conf.md).

1. Set-up and launch platform components.

```bash
# Start platform components
cd ${PROJECT_HOME}/platform
docker compose up -d
```

### Application

> To configure the launch of the application, refer the configuration section in respective applications. If no configuration changes are made, the application will run with 'sensible' defaults. Default configuration of platform will be used if no configuration changes are made.

1. Create required topics.

```bash
# Create topics
cd ${PROJECT_HOME}/init
docker compose up -d
```

2. Login to GitHub Container Registry with `docker` CLI so that container images can be downloaded.

> [Contact us](https://maintenance-mitra.com/signup) for value of `CR_PAT`

```bash
# Setup environment variables
export CR_PAT=
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
```

3. Start-up.

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose --env-file deploy.env up -d
```

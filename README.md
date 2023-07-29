# Introduction

This repository has instructions to launch the Maintenace Mitra application.

- [Introduction](#introduction)
  - [Launch](#launch)
    - [Platform](#platform)
    - [Application](#application)

## Launch

Launching of **Maintenance Mitra** is a two-step process where, the platform components are launched first. Then, the application is launched.

1. Start with cloning the repository with the following command.

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
```

### Platform

1. Launch platform components.

```bash
cd ${PROJECT_HOME}/platform
docker compose --env-file platform.env up -d
```

### Application

1. Create required topics.

```bash
# Create topics
cd ${PROJECT_HOME}/init
docker compose up -d
```

2. Start-up.

```bash
# Start application
cd ${PROJECT_HOME}/mitra
docker compose --env-file app.env up -d
```

3. Access dashboard.

If the `/data` end-point is receiving data, then the dashboard will be live at [`http://localhost:1881/ui`](http://localhost:1881/ui). The `port` number is based on the configuration `UI_PORT` in `conf/dashboard.env`.

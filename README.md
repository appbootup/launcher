# Introduction

This repository has instructions to launch the Maintenace Mitra application.

- [Introduction](#introduction)
  - [Quick start](#quick-start)
  - [Configuration](#configuration)
    - [Limits](#limits)

## Quick start

> The following steps will launch the application without configuring the `limits` application. As a result, no alerts will be raised. To generate alerts, configure the `limits` application, see [Configuration](#configuration).

1. Clone repository.

```bash
git clone https://github.com/nsubrahm/launcher
cd ${PROJECT_HOME}/launch
```

2. Launch application.

```bash
docker compose --env-file launch.env up -d
```

3. Access dashboard.

If the `/data` end-point is receiving data, then the dashboard will be live at [`http://localhost:1881/ui`](http://localhost:1881/ui). The `port` number is based on the configuration `UI_PORT` in `conf/dashboard.env`.

## Configuration

The `limits` applications should be configured to generate alerts. While the configuration parameters exist for other applications - see [`conf`](./launch/conf/) - they should not be changed. Therefore, the documentation is purposely omitted.

### Limits

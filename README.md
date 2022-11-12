# Introduction

## Launch

### Platform set-up

```bash
git clone https://github.com/nsubrahm/launcher
export PROJECT_HOME=${PWD}/launcher
# Start platform components
cd ${PROJECT_HOME}/platform
docker compose -p platform up -d
# Create topics
cd ${PROJECT_HOME}/init
docker compose -p init up -d
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

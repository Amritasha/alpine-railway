![Alpine](https://img.shields.io/badge/Alpine-3.19-0D597F?logo=alpine-linux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Deploy and Host Alpine Terminal on Railway

Alpine Terminal is a browser-accessible Alpine Linux 3.19 shell deployed on Railway via [ttyd](https://github.com/tsl0922/ttyd). Minimal footprint, fast deploys, password-protected access, and persistent storage at `/root`. Comes with essential dev tools and common C/system libraries pre-installed so you can build and run projects without any extra setup.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## About Hosting Alpine Terminal

Hosting Alpine Terminal on Railway means spinning up a minimal Alpine Linux 3.19 container with a browser-based terminal exposed via ttyd. Alpine's musl libc base keeps the image under 10MB, so builds finish in seconds. Railway handles networking and SSL automatically. A persistent volume is mounted at `/root` so your files survive restarts. The image ships with a curated set of dev tools and commonly used C libraries — openssl, zlib, libffi, sqlite, readline, ncurses, libxml2, libxslt, postgresql, mariadb, libyaml, libpng, libjpeg, and linux-headers — so most language runtimes and native extensions compile out of the box.

## Common Use Cases

- Lightweight cloud Linux sandbox for scripting and automation without local setup
- Building and compiling small programs with gcc, python3, or bash in a minimal environment
- Learning Alpine Linux or shell tools from any device with a browser

## Dependencies for Alpine Terminal Hosting

- [ttyd](https://github.com/tsl0922/ttyd) — browser-based terminal emulator that serves the shell over HTTP
- [Alpine Linux 3.19](https://alpinelinux.org/) — minimal base image using musl libc

### Deployment Dependencies

- [ttyd 1.7.3 x86_64 binary](https://github.com/tsl0922/ttyd/releases/tag/1.7.3)
- [Alpine Linux on Docker Hub](https://hub.docker.com/_/alpine)
- [Railway Volumes documentation](https://docs.railway.app/reference/volumes)

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (set automatically by Railway) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Pre-installed Tools

| Category | Tools |
|---|---|
| Editors | vim, nano |
| System | htop, tree, lsof, less, man-pages |
| Files | unzip, zip |
| Build | gcc, g++, make, build-base |
| Network | ip, ping, dig, openssh-client |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, neofetch |
| Libraries | openssl-dev, zlib-dev, libffi-dev, sqlite-dev, readline-dev, ncurses-dev, libxml2-dev, libxslt-dev, postgresql-dev, mariadb-dev, yaml-dev, libpng-dev, libjpeg-turbo-dev, linux-headers |

## Installing More Packages

```bash
apk add <package-name>
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `apk` will not survive a full redeploy.

## Why Deploy Alpine Terminal on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Alpine Terminal on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.

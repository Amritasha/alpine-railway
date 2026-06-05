![Alpine](https://img.shields.io/badge/Alpine-3.19-0D597F?logo=alpine-linux)
![Docker](https://img.shields.io/badge/Docker-Supported-blue?logo=docker)

# Alpine Terminal on Railway

A browser-accessible Alpine Linux terminal deployed on Railway using [ttyd](https://github.com/tsl0922/ttyd). The smallest possible cloud terminal — under 10MB base image.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.com/new/template)

## Description

Deploys a minimal Alpine Linux container accessible from any browser. Extremely fast to build and deploy. Comes with essential tools via apk and a persistent volume mounted at `/root`.

## Environment Variables

| Variable | Description |
|----------|-------------|
| `PORT` | Port for ttyd to listen on (default: 7681) |
| `USERNAME` | Login username for the web terminal |
| `PASSWORD` | Login password for the web terminal |

> **Note:** Always set USERNAME and PASSWORD before deploying.

## Features

- 🏔️ Alpine Linux 3.19 (musl libc, minimal footprint)
- 🔒 Password-protected web terminal
- 💾 Persistent volume mounted at `/root`
- 💻 Neofetch on login
- ⚡ Ultra-fast deploy times
- 🛠️ Pre-installed tools:

| Category | Tools |
|---|---|
| Editors | vim, nano |
| System | htop, tree, lsof, less, man-pages |
| Files | unzip, zip |
| Build | gcc, g++, make, build-base |
| Network | ip, ping, dig, openssh-client |
| Data | jq |
| General | sudo, python3, pip, git, curl, wget, neofetch |

## Installing More Packages

```bash
apk add <package-name>
```

> **Note:** Files saved inside `/root` persist across restarts. Packages installed via `apk` will not survive a full redeploy.

## Use Cases

- Minimal cloud Linux terminal
- Lightweight scripting and automation
- CI-style shell environment with tiny footprint
- Learning Alpine/Linux without local setup

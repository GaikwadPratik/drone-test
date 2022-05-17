#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=
export DRONE_GITHUB_CLIENT_SECRET=
export DRONE_GITHUB_ADMIN=
export DRONE_SERVER_HOST=
export DRONE_CLEANUP_INTERVAL=20m
export DRONE_SERVER_PROTO=http
# export DRONE_TLS_CERT=/etc/certs/hiveio.com/hio.crt
# export DRONE_TLS_KEY=/etc/certs/hiveio.com/hio.key
export DRONE_MAX_PROCS=5

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET=
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker compose up -d
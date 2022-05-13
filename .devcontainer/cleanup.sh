#!/usr/bin/env bash

docker compose stop
docker compose down
docker system prune -a -f
rm -rf drone
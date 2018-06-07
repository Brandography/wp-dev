#!/usr/bin/env bash
cd ../
if [ -z "$1" ]
  then
    docker/docker-compose exec --user www-data wordpress bash
else
    docker/docker-compose exec --user $@ wordpress bash
fi
#!/usr/bin/env bash
cd ../docker
source ../../.env

if [ -z "$1" ]
  then
    docker-compose -p $PROJECT_NAME exec --user www-data wordpress bash -c "wp-cli.phar"
else
    docker-compose -p $PROJECT_NAME exec --user $@ wordpress bash -c "wp-cli.phar $1"
fi

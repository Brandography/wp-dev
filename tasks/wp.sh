#!/usr/bin/env bash
cd ../docker
source ../../.env

docker-compose -p $PROJECT_NAME exec --user www-data wordpress bash -c "wp-cli.phar $1"

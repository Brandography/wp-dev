#!/usr/bin/env bash
cd ../
source ../../.env

if [ -z "$1" ]
  then
    docker-compose -p $PROJECT_NAME exec --user www-data wordpress bash
else
    docker-compose -p $PROJECT_NAME exec --user $@ wordpress bash
fi
#!/usr/bin/env bash
cd ../
source ../../.env

docker-compose -p $COMPOSE_PROJECT_NAME stop
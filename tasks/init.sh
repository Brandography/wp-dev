#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Enter your project name"
else
    echo "Initializing Project $1!"
    sed -i "s/COMPOSE_PROJECT_NAME=.*/COMPOSE_PROJECT_NAME=$1/" ../docker/.env
fi

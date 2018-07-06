#!/usr/bin/env bash
if [ -z "$1" ]; then
    echo "Enter your project name"
else
    echo "Initializing Project $1!"
    cp ../docker/.env.sample ../../.env
    sed -i "s/COMPOSE_PROJECT_NAME=.*/COMPOSE_PROJECT_NAME=$1/" ../../.env
    mkdir -p ../../src/themes
    mkdir -p ../../src/plugins
    mkdir ../../wordpress
    cp ../Makefile ../../
fi

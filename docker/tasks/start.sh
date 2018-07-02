#!/usr/bin/env bash
cd ../

source .env

if [ -z "$COMPOSE_PROJECT_NAME" ]; then
    echo "
    
    Please initialize your project by typing \"make init project-name=<project name>\"
    
    "
else
    docker-compose up -d
    echo "
    ===================== 🚀 Done 🚀 ===================

        Access your new links:

        🌎  Web server: http://localhost/
        ⚙️   PHPMyAdmin: http://localhost:8080

    ===================== 🚀 Done 🚀 ==================="
fi
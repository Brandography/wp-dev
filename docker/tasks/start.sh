#!/usr/bin/env bash
cd ../
source ../../.env


if [ -z "$PROJECT_NAME" ]; then
    echo "
    
    Please initialize your project by typing \"make init project-name=<project name>\"
    
    "
else
    docker-compose -p $PROJECT_NAME up -d
    echo "
    ===================== 🚀 Done 🚀 ===================

        Access your new links:

        🌎  Web server: http://localhost/
        ⚙️   PHPMyAdmin: http://localhost:8080

    ===================== 🚀 Done 🚀 ==================="
fi
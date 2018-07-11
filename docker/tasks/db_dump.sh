#!/usr/bin/env bash
cd ../
source ../../.env

docker-compose -p $PROJECT_NAME exec -T -u root db mysqldump -uwordpress -pwordpress wordpress | gzip -c > mysqldump/$(date +%Y-%m-%d-%H.%M.%S).sql.gz
#!/usr/bin/env bash
docker-compose exec -T -u root db mysqldump -uwordpress -pwordpress wordpress | gzip -c > mysqldump/$(date +%Y-%m-%d-%H.%M.%S).sql.gz
#!/usr/bin/env bash
if [ -z "$1" ]
  then
    echo "enter sql file name"
else
    zcat $@ | docker-compose exec -T -u root db mysql -uwordpress -pwordpress wordpress
    docker-compose exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update wp_options set option_value='http://localhost/' where option_name='siteurl';"
    docker-compose exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update wp_options set option_value='http://localhost/' where option_name='home';"
fi
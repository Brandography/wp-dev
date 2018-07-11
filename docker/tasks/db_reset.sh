#!/usr/bin/env bash
cd ../
source ../../.env

if [ -z "$1" ]
  then
    echo "enter sql file name"
else
    zcat $@ | docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress
    docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update wp_options set option_value='http://localhost/' where option_name='siteurl';"
    docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update wp_options set option_value='http://localhost/' where option_name='home';"
fi
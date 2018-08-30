#!/usr/bin/env bash
cd ../
source ../../.env

if [ -z "$1" ]
  then
    echo "enter sql file name"
else
    zcat $@ | docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress
    # Get the options table name in case of a different prefix
    TABLE=$(echo $(docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="show tables like '%options';") | cut -d" " -f3)
    docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update $TABLE set option_value='http://localhost/' where option_name='siteurl';"
    docker-compose -p $PROJECT_NAME exec -T -u root db mysql -uwordpress -pwordpress wordpress --execute="update $TABLE set option_value='http://localhost/' where option_name='home';"
fi

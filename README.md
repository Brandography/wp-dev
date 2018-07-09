# Wordpress DEV & DEPLOY
## Includes
- PHPMyAdmin
- Capistrano

## Requirements
- [docker-compose](https://docs.docker.com/compose/)
- [Ruby](https://www.ruby-lang.org/en/) <= 2.3

## Initialization
You need to be in your project's root dir to initialize this environment 
```
git submodule add git@github.com:danhort/wp-docker-dev.git <dev dir>
./<dev dir>/init.sh <project name>
```
### Install Wordpress
This will install the latest version of Wordpress at the root of this project. If you whish to import an existing version of wordpress on your own, place it in the wordpress folder.
```
make get-wp
```
### Link WP themes
Custom WP themes are to be placed in the src/themes folder.
The following command will link all the themes to the dev wordpress install.
```
make link-themes
```
### Link WP plugins
Custom WP plugins are to be placed in the src/plugins folder.
The following command will link all the plugins to the dev wordpress install.
```
make link-plugins
```
### Start Docker
Before you start Docker, make sure the ports 80, 3306 and 8080 are free. 
```
make start
```
### Stop Docker
```
make stop
```
### Kill Docker Containers
```
make kill
```
### SSH into wordpress container
```
make shell
```
### Create a databse backup
The backups are located in docker/mysqldumps and are compressed with gz.
```
make db-dump
```
### Import a database dump
This command will import a database dump and also set the home and site url to "localhost".
The mysql file should be compressed with gz.
```
make db-import file=<file path>
```

## Deployment
1. Copy and rename the cap/config/deploy-sample.rb file to cap/config/deploy.rb. In this file set the application name on line 4 and the repo url on line 5.
2. Copy and rename the cap/config/deploy/staging-sample.rb file to cap/config/deploy/staging.rb. In this file set the staging branch name on line 2, set the server url or ip address and the server ssh user name on line 3, set the deploy path on line 4 (set the deploy folder to be on dir down from the wordpress install).
3. same as staging for cap/config/deploy/production-sample.rb
### Deploy to server
```
make deploy to=<production/staging>
``` 
### Symlink the themes and plugins to their respective folders
```
ln -s /path/to/deploy/folder/current/themes/<your theme> /path/to/wordpress/themes/folder/<your theme>
```
```
ln -s /path/to/deploy/folder/current/plugins/<your plugin> /path/to/wordpress/plugins/folder/<your plugin>
```
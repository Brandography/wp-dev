# WP DOCKER DEV & DEPLOY tool

## Requirements
- [docker-compose](https://docs.docker.com/compose/)
- [Ruby](https://www.ruby-lang.org/en/) <= 2.3

### Initialization
`make init`
### Install Wordpress
This will install the latest version of Wordpress at the root of this project. You may whish to import an existing version of wordpress.
`make get-wp`
### Link WP themes
Custom WP themes are to be placed in the theme folder at the root of this project.
The following command will link all the themes to the wordpress install.
`make link-themes`
### Start Docker
`make start`
### Stop Docker
`make stop`
### Kill Docker Containers
`make kill`
### SSH into wordpress container
`make shell`
### Create a databse backup
The backups are located in docker/mysqldumps and are compressed with gz.
`make db-dump`
### Import a database dump
This command will import a database dump and also set the home and site url to "localhost".
The mysql file sould be compressed with gz.
`make db-import file=<file path>`
## Deployment
This deploy tool uses [capistrano](http://capistranorb.com/).
### Deploy to server
`make deploy-to stage=<production/staging>` 
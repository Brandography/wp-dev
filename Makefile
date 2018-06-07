link-themes:
	@cd tasks && ./link_themes.sh
start:
	@cd ./docker/tasks && ./start.sh
stop:
	@cd ./docker/tasks && ./stop.sh
kill: 
	@cd ./docker/tasks && .kill.sh
shell: 
	@cd ./docker/tasks && ./shell.sh
db-reset:
	@cd ./docker/tasks && ./db-reset.sh
db-dump:
	@cd ./docker/tasks && ./db_dump.sh
deploy-staging:
	@cd deploy && bundle exec cap staging deploy
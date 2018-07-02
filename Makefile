init:
	@cd tasks && ./init.sh $(project-name)
update:
	@cd dev/tasks && ./update.sh
link-themes:
	@cd tasks && ./link_themes.sh
link-plugins:
	@cd tasks && ./link_plugins.sh
unlink-themes:
	@cd tasks && ./unlink_themes.sh
get-wp:
	@cd tasks && ./import_wp.sh
start:
	@cd ./docker/tasks && ./start.sh
stop:
	@cd ./docker/tasks && ./stop.sh
kill: 
	@cd ./docker/tasks && ./kill.sh
shell: 
	@cd ./docker/tasks && ./shell.sh
db-import:
	@cd ./docker/tasks && ./db_reset.sh $(file)
db-dump:
	@cd ./docker/tasks && ./db_dump.sh
deploy:
	@cd cap && bundle exec cap $(to) deploy
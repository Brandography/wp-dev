init:
	@cd tasks && ./init.sh $(project-name)
update:
	@cd dev/tasks && ./update.sh
link-themes:
	@cd dev/tasks && ./link_themes.sh
link-plugins:
	@cd dev/tasks && ./link_plugins.sh
unlink-themes:
	@cd dev/tasks && ./unlink_themes.sh
get-wp:
	@cd dev/tasks && ./import_wp.sh
start:
	@cd dev/docker/tasks && ./start.sh
stop:
	@cd dev/docker/tasks && ./stop.sh
kill: 
	@cd dev/docker/tasks && ./kill.sh
shell: 
	@cd dev/docker/tasks && ./shell.sh
db-import:
	@cd dev/docker/tasks && ./db_reset.sh $(file)
db-dump:
	@cd dev/docker/tasks && ./db_dump.sh
deploy:
	@cd dev/cap && bundle exec cap $(to) deploy
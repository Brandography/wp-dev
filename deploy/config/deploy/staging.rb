set :stage, :staging
set :branch, "staging"
server "192.240.178.212", user: "skinspea", roles: %{web app db}, primary: true
set :deploy_to, "/home/skinspea/staging.skinspeaks.com/theme"
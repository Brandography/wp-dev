set :stage, :staging
set :branch, "staging"
server "", user: "", roles: %{web app db}, primary: true
set :deploy_to, ""
# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

set :application, "set your application name here"
set :repo_url, "set your repository location here"

# how many old releases de we want to keep
set :keep_releases, 5

# files we want symlinked to specific entries in shared
set :linked_files, %w{app/etc/local.xml}

# dirs we want symlinked to specific entries in shared
set :linked_dirs, %w{images media var sitemaps}

# run scripts
namespace :deploy do 

end

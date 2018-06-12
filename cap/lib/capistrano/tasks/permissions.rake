namespace :permissions do
  desc "Set file and dir permissions"
  task :set do
    on roles (:all) do
      execute "cd  #{release_path}; find . -type d -exec chmod 755 {} \\; && find . -type f -exec chmod 644 {} \\;"
    end
  end
end
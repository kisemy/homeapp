

set :application, "mcas"

set :repo_url, "git@github.com:kisemy/mcas.git"

set :deploy_to, "/home/deploy/#{fetch :application}"

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/config.yml', 'Gemfile.lock'
#set :linked_files, fetch(:linked_files, []).push('config/database.yml')

#append :linked_files, 'config/database.yml', 'config/secrets.yml' 

# Default value for linked_dirs is []
append :linked_dirs, 'tmp/pids','log', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads', '.bundle', 'vendor/bundle'


#set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
#set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system' )

# Default value for keep_releases is 5
set :keep_releases, 5



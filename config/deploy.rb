

set :application, "mcas"

#set :repo_url, "git@github.com/kisemy/mcas.git"

#set :deploy_to, "home/deploy/#{fetch :application}"

set :deploy_to, "git@github.com:kisemy/home-deploy-mcas.git"
#set :repo_url, "https://github.com/username/appname.git"  #
# Default value for :linked_files is []
#append :linked_files, 'config/database.yml', 'config/config.yml', 'Gemfile.lock'


#append :linked_files, 'config/database.yml', 'config/secrets.yml' 





# Default value for linked_dirs is []
append :linked_dirs, 'tmp/pids','log', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads', '.bundle', 'vendor/bundle'

# Default value for keep_releases is 5
set :keep_releases, 5

 

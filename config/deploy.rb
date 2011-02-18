set :user, 'clavatra'
set :scm, :git 
set :scm_username, "stacyvlasits" 
set :scm_password, "p@ssw0rd" 
set :repository,  "git://github.com/stacyvlasits/realty.git"
set :server, 'resortrealty.railsplayground.net'
set :application, 'realty'
set :applicationdir, 'realty/public' 
# set :repository, "http://#{svnserver}/svn/#{application}/trunk"

role :web, "resortrealty.clavat.railsplayground.net"                          # Your HTTP server, Apache/etc
role :app, "resortrealty.clavat.railsplayground.net"                          # This may be the same as your `Web` server
role :db,  "resortrealty.clavat.railsplayground.net", :primary => true # This is where Rails migrations will run

set :deploy_to, "/home/#{user}/#{applicationdir}" 
ssh_options[:forward_agent] = false
default_run_options[:pty] = true 
set :deploy_via, :remote_cache
set :use_sudo, false 
set :mongrel_conf, "#{current_path}/config/mongrel_cluster.yml"
set :branch, "master"



task :restart, :roles => :app do
end

task :after_update_code, :roles => [:web, :db, :app] do
  run "chmod 755 #{release_path}/public -R" 
end



# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`



# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'

set :application, 'landmarkdeveloper'
set :repo_url, 'git@github.com:tnvr000/landmarkdeveloper.git'
# set :rvm_map_bins, %w[gem rake ruby rails bundle]

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
set :branch, EVN['BRANCH'] if ENV['BRANCH']
# fetch(:default_env).merge!(rvm_bin_path: '/usr/share/rvm/bin/rvm')
# set :rvm1_ruby_version, '2.6.3@landmark'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/ubuntu/deploy/landmarkdeveloper'
set :linked_files, %w[config/database.yml config/master.key]
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system]

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"


# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :rvm_type, :system
set :rvm_ruby_version, '2.6.3@landmark'
set :rvm_custom_path, '/usr/share/rvm/'
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5
set :keep_assets, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

namespace :deploy do
  desc 'Restart Application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end

require 'capistrano'
require 'ecm/capistrano/yaml_db/common'

Capistrano::Configuration.instance(:must_exist).load do
  namespace :db do
    namespace :data do
      desc "Loads data from data.yml"
      task(:"load!", { :roles => :app }) do
        actual_env = respond_to?(:stage) ? stage : rails_env;
        run <<-CMD
          cd #{current_path};
          bundle exec rake RAILS_ENV=#{actual_env} db:data:load
        CMD
      end

      desc "dumps the db data to db/data.yml"
      task :dump, :roles => :app do
        actual_env = respond_to?(:stage) ? stage : rails_env;
        run <<-CMD
          cd #{current_path};
          bundle exec rake RAILS_ENV=#{actual_env} db:data:dump
        CMD
      end

      desc "dumps the db data to db/dump_dir"
      task :dump_dir, :roles => :app do
        actual_env = respond_to?(:stage) ? stage : rails_env;
        run <<-CMD
          cd #{current_path};
          bundle exec rake RAILS_ENV=#{actual_env} db:data:dump_dir
        CMD
      end
    end
  end
end  

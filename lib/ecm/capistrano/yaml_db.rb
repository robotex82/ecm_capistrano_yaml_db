require 'ecm/capistrano/common'

unless Capistrano::Configuration.respond_to?(:instance)
  abort "capistrano/ext/multistage requires Capistrano 2"
end

Capistrano::Configuration.instance.load do
  namespace :db do
    namespace :data do
      desc "dumps the db data to db/data.yml"
      task :dump, :roles => :app do
        run <<-CMD
          cd #{current_path}; 
          bundle exec rake RAILS_ENV=#{stage} db:data:dump
        CMD
      end
    end
  end
end  

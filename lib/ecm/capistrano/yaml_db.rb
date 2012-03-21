require 'ecm/capistrano/common'

configuration = Capistrano::Configuration.respond_to?(:instance) ?
  Capistrano::Configuration.instance(:must_exist) :
  Capistrano.configuration(:must_exist)

configuration.load do
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

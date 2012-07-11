$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/capistrano/yaml_db/version"

Gem::Specification.new do |s|
  s.name        = "ecm_capistrano_yaml_db"
  s.summary     = "Capistrano yaml db tasks"
  s.description = "Capistrano yaml db tasks"
  s.version = Ecm::Capistrano::YamlDb::VERSION
  
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  
  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Gemfile", "README.rdoc"]

  s.add_dependency 'capistrano'
end

# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.authors = "Roberto Vasquez Angel"
  s.name = "ecm_capistrano_yaml_db"
  s.summary = "Capistrano yaml db tasks"
  s.description = "Capistrano yaml db tasks"
  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Gemfile", "README.rdoc"]
  s.require_paths = ["lib"]
  s.version = "0.0.1"
end

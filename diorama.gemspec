$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "diorama/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "diorama"
  s.version     = Diorama::VERSION
  s.authors     = ["David Johnson"]
  s.email       = ["david@softwareblacksmith.com"]
  s.homepage    = "https://github.com/anotherdjohnson/diorama"
  s.summary     = "Store Rails view templates in your database."
  s.description = "This Gem allows Rails applications to store it's view templates in it's database."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.21"

  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "sqlite3"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_globalize/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_globalize"
  s.version     = RailsAdminGlobalize::VERSION
  s.authors     = ["Andrea Zaupa"]
  s.email       = ["azaupa@gmail.com"]
  s.homepage    = "https://github.com/andreazaupa/rails_admin_globalize"
  s.summary     = "Rails Admin plugin to manage Globalize3 translations"
  s.description = "Rails Admin plugin to manage Globalize3 translations"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 3.1"
  s.add_dependency "rails_admin"
  s.add_dependency "globalize3", ">= 0.2.0"
  s.add_dependency "haml-rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "sass-rails"
end

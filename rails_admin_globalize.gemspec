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
  s.summary     = "Translation action to rails_admin + globalize3"
  s.description = "RailsAdminGlobalize."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "rails_admin", "~> 0.3.0"
  s.add_dependency "globalize3", "0.2.0"
end

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wizard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "wizard"
  s.version     = Wizard::VERSION
  s.authors     = ["Jais Cheema"]
  s.email       = ["jaischeema@gmail.com"]
  s.homepage    = "http://jaischeema.com/wizard"
  s.summary     = "Plugin to implement the wizard from railscasts"
  s.description = "This is the wrapping of Ryan Bates multi form login into a plugin"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "sqlite3"
end

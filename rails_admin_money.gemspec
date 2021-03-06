$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_money/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_money"
  s.version     = RailsAdminMoney::VERSION
  s.authors     = ["Nick Mele"]
  s.email       = ["nickmele26@gmail.com"]
  s.homepage    = "https://github.com/NickMele/rails_admin_money"
  s.summary     = "Rails Admin field type for money-rails attributes"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"
end

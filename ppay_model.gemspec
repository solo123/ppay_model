$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ppay_model/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ppay_model"
  s.version     = PpayModel::VERSION
  s.authors     = ["jimmy"]
  s.email       = ["solo123@21cn.com"]
  s.homepage    = "http://www.pooul.cn"
  s.summary     = "Data models"
  s.description = "all shared data models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end

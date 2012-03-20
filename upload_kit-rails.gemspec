$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "upload_kit-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "upload_kit-rails"
  s.version     = UploadKitRails::VERSION
  s.authors     = ["Nicholas Watson, Justin D'Arcangelo"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "http://github.com/entropillc/upload_kit-rails"
  s.summary     = "Packages the UploadKit JavaScript UI components in to a Ruby gem"
  s.description = "Packages the UploadKit JavaScript UI components in to a Ruby gem"

  s.files = Dir["lib/**/*"] + Dir["vendor/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
end

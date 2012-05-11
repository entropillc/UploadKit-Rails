$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "upload_kit/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "upload_kit-rails"
  s.version     = UploadKit::Rails::VERSION
  s.authors     = ["Nicholas Watson, Justin D'Arcangelo"]
  s.email       = ["nick@entropi.co"]
  s.homepage    = "https://github.com/entropillc/UploadKit-Rails"
  s.summary     = "Packages the UploadKit JavaScript UI components in to a Ruby gem"
  s.description = "Packages the UploadKit JavaScript UI components in to a Ruby gem"

  s.files = Dir["lib/**/*"] + ["Rakefile", "README.rdoc"]
  s.files += [
              "vendor/assets/UploadKit/uploadkit.js",
              "vendor/assets/UploadKit/uploadkit.css",
              "vendor/assets/UploadKit/externals/plupload/js/plupload.full.js",
              "vendor/assets/UploadKit/externals/plupload/js/plupload.flash.swf",
              "vendor/assets/UploadKit/externals/plupload/js/plupload.silverlight.xap"
            ]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", ">= 3.1.0"
end

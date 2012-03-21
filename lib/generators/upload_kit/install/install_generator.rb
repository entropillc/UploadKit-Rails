require 'rails/generators/base'

module UploadKit
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      
      def add_javascript
        insert_into_file "app/assets/javascripts/application.js","//= require externals/plupload/js/plupload.full\n", :before => "//= require_tree ."
        insert_into_file "app/assets/javascripts/application.js","//= require uploadkit\n", :before => "//= require_tree ."
      end
      
      def add_css
        insert_into_file "app/assets/stylesheets/application.css", " *= require uploadkit\n", :after => "require_self\n"
      end
      
    end
  end
end
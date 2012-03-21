module UploadKit
  module Rails
    class Engine < ::Rails::Engine
      initializer 'uploadkit-rails.setup', :group => :all do |app|
          app.config.assets.paths << File.join(config.root, 'vendor', 'UploadKit',)
      end
    end
  end
end
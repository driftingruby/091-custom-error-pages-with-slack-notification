require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Template
  class Application < Rails::Application
    config.load_defaults 5.1
    config.exceptions_app = self.routes
  end
end

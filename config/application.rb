require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Railshotwire
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
    config.active_record.async_query_executor = :global_thread_pool
    
    # Where the I18n library should search for translation files
    I18n.config.enforce_available_locales = (Rails.env.test? ? false : true)
    
    #avalaible lenguages
    config.i18n.available_locales = [:en, :es]

    #lenguage by default
    config.i18n.default_locale = :es
  end
end

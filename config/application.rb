require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ArExample
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    def credentials
      if Rails.env.production?
        super
      else
        encrypted(
          "config/credentials/#{Rails.env.downcase}.yml.enc",
          key_path: "config/credentials/#{Rails.env.downcase}.key"
        )
      end
    end
  end
end

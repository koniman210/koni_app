require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KoniApp
  class Application < Rails::Application
    config.load_defaults 6.0
    #日本語に設定
    config.i18n.default_locale = :ja
    #東京時間に設定
    config.time_zone = "Tokyo"  
    config.active_record.default_timezone = :local  
    
  end
end

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.generators.template_engine = :slim

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    
    # 時間の地域設定を日本にする
    config.time_zone = 'Tokyo'

    # エラーメッセージを日本語化
    config.i18n.default_locale = :ja
    # config/localesは以下のymlを全て読み込む
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
  end
end

class AppConfig < ApplicationConfig
    attr_config :secret_key_base,
                :default_url_host,
                :default_url_port
  end
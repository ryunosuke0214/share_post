class DbConfig < ApplicationConfig
    attr_config :database_name,
                :database_host,
                :database_user,
                :database_password
  end
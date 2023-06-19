Sidekiq.configure_server do |config|
    config.redis = {
      url: "redis://#{RedisConfig.redis_host}"
    }
  end
  
  Sidekiq.configure_client do |config|
    config.redis = {
      url: "redis://#{RedisConfig.redis_host}"
    }
  end
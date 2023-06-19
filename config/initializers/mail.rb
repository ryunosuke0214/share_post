Rails.application.config.action_mailer.delivery_method = MailConfig.delivery_method.to_sym
Rails.application.config.action_mailer.raise_delivery_errors = MailConfig.raise_delivery_errors
Rails.application.config.action_mailer.default_url_options = MailConfig.default_url_options
Rails.application.config.action_mailer.smtp_settings = MailConfig.smtp_setting if MailConfig.smtp_setting
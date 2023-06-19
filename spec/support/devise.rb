require './spec/support/login_helper'

RSpec.configure do |config|
  config.include Devise::Test::IntegrationHelpers, type: :request
  config.extend LoginHelper, type: :request
end
# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 7.0.4.2'

gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'sprockets-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'anyway_config', '~> 2.0'
gem 'devise'
gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'gimei'
end

group :development do
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'solargraph'
  gem 'letter_opener_web', '~> 2.0'
  gem 'sidekiq', '<7'
end

group :test do
  gem 'rspec-rails', '~> 6.0.0'
end



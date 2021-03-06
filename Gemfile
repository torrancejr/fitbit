source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'carrierwave', '~> 1.1'
gem 'devise'
gem 'fog'
gem 'rails', '~> 5.1.1'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'pg', '~> 0.18'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'foundation-rails'
gem 'sprockets-rails'
gem 'omniauth-fitbit'
gem 'breakpoint'
gem 'toolkit'
gem 'foundation-icons-sass-rails'
gem 'omniauth-oauth2'
gem 'active_model_serializers'
gem 'dotenv'
gem 'dotenv-rails'
gem 'jquery-rails'
gem 'rails_12factor'
gem 'rest-client'
gem 'sendgrid-ruby'
gem 'simplecov'
gem 'font-awesome-sass'
gem 'uuid', '~> 2.3', '>= 2.3.8'

group :test do
  gem 'coveralls', require: false
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl'
  gem 'valid_attribute'
  gem 'shoulda-matchers', require: false
end


group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

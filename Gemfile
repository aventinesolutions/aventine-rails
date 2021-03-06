source 'https://rubygems.org'

ruby '2.5.1'

gem 'rails', '4.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 4' 
  gem 'coffee-rails'
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'compass_twitter_bootstrap'
end

gem 'jquery-rails'
gem 'compass-rails'
gem 'haml-rails'
gem 'nokogiri', '~> 1.8.1'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# To use debugger
# gem 'debugger'

gem 'capistrano', '~> 3.0'
gem 'capistrano-rvm'
gem 'passenger'

group :development do
  gem 'guard', '~>2'
  gem 'rails-footnotes', '>= 3.7.5.rc4'
  gem 'pry-rails', '~> 0.2.1'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'debase', '~>0'
  gem 'ruby-debug-ide', '~>0'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'hydra', :require => false
  gem 'turn', :require => false
  gem 'execjs'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'factory_bot_rails'
  gem 'spork-rails'
  gem 'guard-rspec'
  gem 'capybara'
  gem 'poltergeist'
  gem 'faker', git: 'git@github.com:stympy/faker.git'
  gem 'rubocop-rails'
end

group :test do
  gem 'cucumber-rails', require: false
  gem 'gherkin', '2.11.1'
  gem 'pickle'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'jasmine', require: false
end

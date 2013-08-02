source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer','~> 0.10.0', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'compass_twitter_bootstrap'
end

gem 'jquery-rails'
gem 'compass-rails'
gem 'haml-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development do
  gem 'guard', '>= 0.6.2'
  gem 'pg'
  gem 'rails-footnotes', '>= 3.7.5.rc4'
  # gem 'spreadsheet', '~> 0.6.5.9'
  # gem 'rails-dev-tweaks', '~> 0.6.1'
  gem 'pry-rails', '~> 0.2.1'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'hydra', :require => false
  gem 'turn', :require => false
  gem 'execjs'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'spork-rails'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'capybara'
  gem 'capybara-webkit', :git => 'https://github.com/thoughtbot/capybara-webkit.git'
  gem 'faker'
end

group :test do
  gem 'autotest-standalone'
  gem 'cucumber-rails', require: false
  gem 'gherkin', '2.11.1'
  gem 'pickle'
  gem 'minitest'
  gem 'shoulda-matchers'
  gem 'timecop'
  gem 'jasmine', require: false
end

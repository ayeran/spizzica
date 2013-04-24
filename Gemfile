source 'http://rubygems.org'
  gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development, :test do
#  gem 'sqlite3'
  gem 'mysql2'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'ruby-debug-base19x', "~>0.11.30.pre4"
  gem 'linecache19', :git => 'git://github.com/mark-moseley/linecache'
  gem 'ruby-debug-base19x', '~> 0.11.30.pre4'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'simplecov'
  gem "factory_girl_rails", ">= 4.2.0"
  gem "factory_girl"
  gem "railroady", "~> 1.1.0"
end
group :production do
#  gem 'pg'
  gem 'mysql2'
end

# group :test, :development do
  # gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions
  # gem 'database_cleaner' # to clear Cucumber's test database between runs
  # gem 'capybara'         # lets Cucumber pretend to be a web browser
  # gem 'launchy'          # a useful debugging aid for user stories
# end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer'
  gem 'sass-rails', "~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'
gem "paperclip", "~> 3.4.1"
# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'nifty-generators'
gem 'haml'
gem "haml-rails"
gem "devise"
gem "cancan"
gem 'rb-inotify', '~> 0.8.8'
gem 'gherkin', '<= 2.11.6'

group :development do
  gem 'cucumber-rails', :require => false
end

group :test do
	gem 'cucumber-rails', :require => false
end
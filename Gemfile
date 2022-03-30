source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.12.2'
  gem 'faker', '~> 2.5'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'factory_bot', '~> 5.1', '>= 5.1.1'
  gem 'rails-controller-testing'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # For checking memory leaks and benchmarking code"
  gem "memory_profiler"
  gem "derailed_benchmarks"
  gem 'capybara', '>= 2.15'
  # hirb preety print
  gem 'hirb'
  # kill N+1 queries 
  gem 'bullet', '~> 6.0', '>= 6.0.2'
  # dependency for bullet
  gem 'uniform_notifier', '~> 1.12', '>= 1.12.1'
  # ERD gem for visualizing the db structure
  gem 'erd'

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# bootstrap gem 
gem 'bootstrap', '~> 4.3', '>= 4.3.1'

# jquery gem 
gem 'jquery-rails'

# for authentication
gem 'devise'


# font awesome 
gem 'font-awesome-rails'

# postgres credentials manager 
gem 'dotenv-rails'

# figaro for enviornment varaible management 
gem 'figaro'

gem 'actionmailer'
# for mailing 
gem 'mail'
# kaminari for pagination
gem 'kaminari'
#gem 'kaminari-bootstrap'
gem 'bootstrap4-kaminari-views'
# pdf kit for genrating pdf invoices
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
# simon carletti breadcrumb
gem "breadcrumbs_on_rails"
# calender 
gem "simple_calendar"
# chartkick gem for charting 
gem 'chartkick'

# auth with gihub in hand with devise
gem 'omniauth-github'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
source 'https://rubygems.org'

gem 'rails', '3.2.14'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '0.3.11'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.1.3'
gem 'fancybox-rails', '0.1.4'

#Deploy at Heroku
gem 'heroku', '2.14.0'
#gem 'taps', '0.3.23'

#Gemas para el entorno de producción en Heroku
# pg -> PostrgresSQL
# thin -> Webserver alternativo a Webrick
# therubyracer -> Javascript Runtime
group :staging, :production do
  gem 'pg'
  gem 'thin'
  gem 'therubyracer'
end

gem 'capistrano', '2.13.5'

gem 'mechanize', '2.5.1'

gem 'jbuilder'

group :test do
  gem 'rspec-rails', '2.11.0'
  gem 'database_cleaner', '0.8.0'
  gem 'machinist', '2.0'
  gem 'shoulda-matchers', '1.3.0'
  gem 'faker', '1.1.2'
  gem 'cucumber'
  gem 'rspec_api_documentation'
end

group :develoment do
  gem 'pry-rails'
end

gem 'inherited_resources', '1.3.1'
gem 'devise', '2.1.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

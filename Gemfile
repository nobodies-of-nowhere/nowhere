source 'https://rubygems.org'

gem 'rails', '4.2.3' # Web framework
gem 'pg', '0.18.2'   # Database connection

# Assets
gem 'jquery-rails' # Rails 'unobtrusive' JS library

gem 'sass-rails', '~> 5.0' # SCSS compilation
gem 'uglifier', '>= 1.3.0' # CSS minification
gem 'autoprefixer-rails'   # CSS vendor prefixing for compatibility
gem 'normalize-rails'      # CSS reset


gem 'flutie' # Title and body class view helpers


gem 'turbolinks'         # Go faster stripes
gem 'jbuilder', '~> 2.0' # DSL for building JSON structures

group :doc do
  gem 'sdoc', '~> 0.4.0' # Generate rails docs with bundle exec rake doc:rails
end


group :development, :test do
  # Debugging
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'web-console', '~> 2.0' # REPL in error pages

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Testing
  gem 'rspec-rails'
  gem 'rubocop'                     # Style linting
  gem 'guard-rspec', require: false # Run tests on changes

  # Code analysis
  gem 'flay',        require: false
  gem 'sandi_meter', require: false

  # Security analysis
  gem 'brakeman',    require: false

  gem 'quiet_assets' # Don't log requests to assets
end


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

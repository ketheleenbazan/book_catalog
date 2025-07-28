source "https://rubygems.org"

# specified Ruby version for Heroku
ruby "3.3.8"


# Authentication system (sign up, login, logout, password reset)
gem "devise"

# Provides easy search and filtering for models (used for books search later)
gem "ransack"

# Rails framework (main framework for the application)
gem "rails", "~> 8.0.1"

# Modern asset pipeline for handling CSS/JS/images
gem "propshaft"

# Database adapter for PostgreSQL (the database in use for this project)
gem "pg", "~> 1.1"

# Web server for Rails applications
gem "puma", ">= 5.0"

# JavaScript and CSS management using Importmaps (Rails 7+ default)
gem "importmap-rails"

# Enables Hotwire Turbo for fast navigation without full page reloads
gem "turbo-rails"

# Stimulus.js support for adding lightweight JavaScript controllers
gem "stimulus-rails"

# Build JSON APIs easily (not currently used, but useful if an API is added later)
gem "jbuilder"

# Timezone info for Windows and JRuby environments
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Rails background processing and caching tools (part of the new Rails 8 ecosystem)
gem "solid_cache"
gem "solid_queue"


# Speeds up boot times by caching (improves performance)
gem "bootsnap", require: false

# Deployment tool for Rails apps (optional, not used in development)
gem "kamal", require: false

# Adds HTTP caching/compression to Puma (for production environments)
gem "thruster", require: false

# --- Development & Test Environment ---
group :development, :test do
  # Debugging tool for Rails apps
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Security scanner for detecting vulnerabilities in the app
  gem "brakeman", require: false

  # Automatic Ruby style and linting rules (Rails community standard)
  gem "rubocop-rails-omakase", require: false

  # Testing framework (RSpec) for writing unit and feature tests
  gem "rspec-rails"
end

# --- Development Only ---
group :development do
  # Allows using a console in the browser when an error occurs
  gem "web-console"
end

# --- Test Only ---
group :test do
  # For system/browser testing
  gem "capybara"

  # Provides headless browser support (Chrome/Firefox) for Capybara
  gem "selenium-webdriver"
end

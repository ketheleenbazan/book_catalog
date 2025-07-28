# source "https://rubygems.org"

# gem "devise"

# gem "ransack"


# # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
# gem "rails", "~> 8.0.1"
# # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
# gem "propshaft"
# # # Use postgresql as the database for Active Record
# gem "pg", "~> 1.1"
# # Use the Puma web server [https://github.com/puma/puma]

# # Using mongodb as the database for Active Record
# # gem "mongoid", "~> 7.0"

# gem "puma", ">= 5.0"
# # Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
# gem "importmap-rails"
# # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
# gem "turbo-rails"
# # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
# gem "stimulus-rails"
# # Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# # gem "bcrypt", "~> 3.1.7"

# # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem "tzinfo-data", platforms: %i[ windows jruby ]

# # Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
# gem "solid_cache"
# gem "solid_queue"
# gem "solid_cable"

# # Reduces boot times through caching; required in config/boot.rb
# gem "bootsnap", require: false

# # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
# gem "kamal", require: false

# # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
# gem "thruster", require: false

# # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# # gem "image_processing", "~> 1.2"

# group :development, :test do
#   # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
#   gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

#   # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
#   gem "brakeman", require: false

#   # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
#   gem "rubocop-rails-omakase", require: false
# end

# group :development, :test do
#   gem 'rspec-rails'
# end


# group :development do
#   # Use console on exceptions pages [https://github.com/rails/web-console]
#   gem "web-console"
# end

# group :test do
#   # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
#   gem "capybara"
#   gem "selenium-webdriver"
# end



# =================================================

source "https://rubygems.org"

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
gem "solid_cable"

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

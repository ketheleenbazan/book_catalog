# this file sets up the Rails environment for RSpec tests
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

#to prevent running tests if the environment is accidentally production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'

# maintain the test database schema in sync with migrations
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  # path where fixtures (test data files) live
  config.fixture_paths = [
    Rails.root.join('spec/fixtures')
  ]

  # use DB transactions to keep tests isolated
  config.use_transactional_fixtures = true

  # clean up Rails stack traces for readability
  config.filter_rails_from_backtrace!
end

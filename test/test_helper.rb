ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    #to run tests in parallel across CPU cores
    parallelize(workers: :number_of_processors)

    #to load all fixtures (test data) from test/fixtures/*.yml
    fixtures :all

    #additional helper methods for all tests can go here
  end
end

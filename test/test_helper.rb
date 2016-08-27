require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


require "minitest/reporters"
require 'minitest/spec'
# require 'minispec-metadata'

# require 'webmock/minitest'
# require 'minitest/reporters'


# Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# MinitestVcr::Spec.configure!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :users, :photos

  # Add more helper methods to be used by all tests here...
end

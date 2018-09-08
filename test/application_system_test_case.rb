require "test_helper"
# add require statements from test_helper.rb file:
# ENV['RAILS_ENV'] ||= 'test'
# require_relative '../config/environment'
# require 'rails/test_help'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end

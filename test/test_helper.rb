ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest

  def login_as(user)
    visit login_url
    fill_in "Username", with: user.username
    fill_in "Password", with: 'secret'
    click_on "Login"
  end
  
  def logout
    delete logout_url
  end

  def setup 
    login_as users(:one)
  end
end

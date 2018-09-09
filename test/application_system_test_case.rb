require "test_helper"
# add require statements from test_helper.rb file:
# ENV['RAILS_ENV'] ||= 'test'
# require_relative '../config/environment'
# require 'rails/test_help'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

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

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should ask for login" do
    get login_url
    assert_response :success
  end

  test "should login" do
    umai = users(:one)
    post login_url, params: { username: umai.username, password: 'secret' }
    assert_redirected_to admin_url
    assert_equal umai.id, session[:user_id]
  end

  test "should fail at login" do
    umai = users(:one)
    post login_url, params: { username: umai.username, password: 'incorrect' }
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url 
    assert_redirected_to store_index_url
  end

end

require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success

    # assert_select 'body ul.polaris-option_list', minimum: 4
    assert_select 'h1', 'Your Flight Catalog'
    # make sure it is the index form and not an incorrect redirect:
    assert_select 'h3', 'Cuba'
  end

end

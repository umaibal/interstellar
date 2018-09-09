require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "need cart with items" do 
    get new_order_url
    assert_redirected_to store_index_path
    assert_equal flash[:notice], 'Your cart is empty'
  end

  test "should get new" do
    post tickets_url, params: { ticket: {flight_id: flights(:two).id} }

    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { city: @order.city, country: @order.country, email: @order.email, full_name: @order.full_name, mailing_address: @order.mailing_address, pay_type: @order.pay_type, phone_number: @order.phone_number } }
    end

    assert_redirected_to store_index_url(locale: 'en')
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { city: @order.city, country: @order.country, email: @order.email, full_name: @order.full_name, mailing_address: @order.mailing_address, pay_type: @order.pay_type, phone_number: @order.phone_number } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end

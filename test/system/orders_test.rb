require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "City", with: @order.city
    fill_in "Country", with: @order.country
    fill_in "Email", with: @order.email
    fill_in "Full Name", with: @order.full_name
    fill_in "Mailing Address", with: @order.mailing_address
    fill_in "Pay Type", with: @order.pay_type
    fill_in "Phone Number", with: @order.phone_number
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "City", with: @order.city
    fill_in "Country", with: @order.country
    fill_in "Email", with: @order.email
    fill_in "Full Name", with: @order.full_name
    fill_in "Mailing Address", with: @order.mailing_address
    fill_in "Pay Type", with: @order.pay_type
    fill_in "Phone Number", with: @order.phone_number
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end

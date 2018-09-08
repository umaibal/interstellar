require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  include ActiveJob::TestHelper
  setup do
    @order = orders(:one)
  end

  test "check credit card number" do 

    Ticket.delete_all
    Order.delete_all

    visit store_index_url 
    
    click_on 'Add to Cart', match: :first

    click_on 'Checkout'

    fill_in 'order_full_name', with: 'Natasha Romanoff'
    fill_in 'order_mailing_address', with: '324 Avengers Tower'
    fill_in 'order_country', with: 'United States of America'
    fill_in 'order_city', with: 'New York'
    fill_in 'order_email', with: 'natasha@gmail.com'

    assert_no_selector "#order_credit_card_number"

    select 'Credit Card', from: 'pay_type'

    assert_selector "#order_credit_card_number"

    fill_in "Credit Card #", with: "123456"
    fill_in "Expiration Date", with: "01/21"

    perform_enqueued_jobs do 
      click_button "Submit Details"
    end

    orders = Order.all 
    assert_equal 1, orders.size 

    order = orders.first 

    assert_equal "Natasha Romanoff", order.full_name
    assert_equal "324 Avengers Tower", order.mailing_address
    assert_equal "United States of America", order.country
    assert_equal "New York", order.city 
    assert_equal "natasha@gmail.com", order.email 
    assert_equal "Credit Card", order.pay_type 
    assert_equal 1, order.tickets.size

    mail = ActionMailer::Base.deliveries.last 
    # assert_equal [""], mail.to
    assert_equal 'Umai Balendra <umai@interstellar.ca>', mail[:from].value
    assert_equal "Interstellar Order Confirmation", mail.subject
  end
end

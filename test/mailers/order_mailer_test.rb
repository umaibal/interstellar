require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Interstellar Order Confirmation", mail.subject
    assert_equal ["umai@interstellar.ca"], mail.to
    assert_equal ["interstellar@example.com"], mail.from
  end

  test "itinerary" do
    mail = OrderMailer.itinerary(orders(:one))
    assert_equal "Interstellar Flight Itinerary", mail.subject
    assert_equal ["umai@interstellar.ca"], mail.to
    assert_equal ["interstellar@example.com"], mail.from
  end

end

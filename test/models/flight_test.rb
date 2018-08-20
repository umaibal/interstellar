require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  test "flight attributes must not be empty" do
    flight = Flight.new
    assert flight.invalid?
    assert flight.errors[:seat].any?
    assert flight.errors[:destination].any?
    assert flight.errors[:departure_time].any?
    assert flight.errors[:arrival_time].any?
  end

  # test "flight seat must be valid" do 
  #   flight = Flight.new(destination: "Ottawa",
  #                       departure_time: '13:00:00',
  #                       arrival_time: '14:00:00')

  #   flight.seat = "hik"         
  #   assert flight.invalid?
    
  #   flight.seat = 3
  #   assert flight.valid?
  # end
end

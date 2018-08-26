class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    displayFlightsByDate
  end

  def displayFlightsByDate 
    @flights = Flight.order(:departure_time)
    # fix this later to order based on cheapest prices ASC
  end
end

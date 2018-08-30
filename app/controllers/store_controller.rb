class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    if params[:set_locale]
      redirect_to store_index_url(locale: params[:set_locale])
    else
      @flights = Flight.order(:destination)
    end
  end

  def displayFlightsByDate 
    @flights = Flight.order(:departure_time)
    # fix this later to order based on cheapest prices ASC
  end
end

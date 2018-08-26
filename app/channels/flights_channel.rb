class FlightsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "flights"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

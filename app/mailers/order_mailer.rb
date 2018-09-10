class OrderMailer < ApplicationMailer
  default from: 'admin@interstellar.ca'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: 'Interstellar Order Confirmation'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.itinerary.subject
  #
  def itinerary(order)
    @order = order

    mail to: order.email, subject: 'Interstellar Flight Itinerary'
  end
end

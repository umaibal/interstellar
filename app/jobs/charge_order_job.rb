class ChargeOrderJob < ApplicationJob
  queue_as :default

  def perform(order, pay_type_params)
    # call charge method:
    order.charge!(pay_type_params)
  end
end

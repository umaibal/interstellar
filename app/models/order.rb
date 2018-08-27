require 'pago'

class Order < ApplicationRecord
    enum pay_type: {
        "Credit Card" => 0,
        "Debit Card" => 1,
        "PayPal" => 2
}

    validates :full_name, :mailing_address, :country, :city, :email, presence: true
    validates :pay_type, inclusion: pay_types.keys

    has_many :tickets, dependent: :destroy

    def add_tickets_from_cart(cart)
        cart.tickets.each do |ticket|
            ticket.cart_id = nil
            tickets << ticket
        end
    end

    def charge!(pay_type_params)
        payment_details = {}
        payment_method = nil 
        case pay_type 
        when "Credit card"
            payment_method = :credit_card
            month, year = pay_type_params[:expiration_date].split(//)
            payment_details[:cc_num] = pay_type_params[:credit_card_number]
            payment_details[:expiration_month] = month
            payment_details[:expiration_year] = year 
        when "Debit card"
            payment_method = :debit_card
            month, year = pay_type_params[:expiration_date].split(//)
            payment_details[:cc_num] = pay_type_params[:debit_card_number]
            payment_details[:expiration_month] = month
            payment_details[:expiration_year] = year 
        when "Purchase order" 
            payment_method = :po 
            payment_details[:username] = pay_type_params[:username]
            payment_details[:password] = pay_type_params[:password]
        end 

        payment_result = Pago.make_payment(
            order_id: id,
            payment_method: payment_method,
            payment_details: payment_details
        )

        if payment_result.succeeded?
            OrderMailer.received(self).deliver_later
        else
            raise payment_result.error
        end
    end
end

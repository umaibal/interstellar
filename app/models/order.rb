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
end

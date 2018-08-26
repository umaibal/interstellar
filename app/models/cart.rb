class Cart < ApplicationRecord
    has_many :tickets, dependent: :destroy

    def add_flight(flight)
        current_ticket = tickets.find_by(flight_id: flight.id)
        if current_ticket 
            current_ticket.quantity += 1
        else 
            current_ticket = tickets.build(flight_id: flight.id)
        end
        current_ticket
    end
end

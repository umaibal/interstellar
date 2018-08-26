class CombineTicketsInCart < ActiveRecord::Migration[5.2]
  def up
    # replace multiple occurences of tickets with a single ticket
    # along with its count instead
    Cart.all.each do |cart|
      # add all the tickets of each flight in the cart
      sums = cart.tickets.group(:flight_id).sum(:quantity)

      sums.each do |flight_id, quantity|
        if quantity > 1 
          # remove the indiv tickets 
          cart.tickets.where(flight_id: flight_id).delete_all

          # replace with a single ticket item and count 
          item = cart.tickets.build(flight_id: flight_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down 
    # split tickets with quantity > 1 into multiple tickets
    Ticket.where("quantity>1").each do |ticket|
      # add indiv tickets
      ticket.quantity.times do 
        Ticket.create(
          cart_id: ticket.cart_id,
          flight_id: ticket.flight_id,
          quantity: 1
        )
        end

        # remove original ticket
        ticket.destroy
    end
  end
end

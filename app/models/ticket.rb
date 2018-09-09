class Ticket < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :flight
  # not optional to belong to flight,
  # since a flight has many tickets and
  # that is a fact for these models
  belongs_to :cart, optional: true
  # add optional: true to Cart association
  # because before & after being purchased, the 
  # ticket would not belong to the cart
  # and while being purchased it does!
end

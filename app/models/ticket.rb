class Ticket < ApplicationRecord
  belongs_to :flight
  belongs_to :cart
end

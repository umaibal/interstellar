class Ticket < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :flight, optional: true
  belongs_to :cart
end

class Ticket < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :flight, optional: true
    belongs_to :cart
end

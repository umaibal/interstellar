class Cart < ApplicationRecord
    has_many :tickets, dependent: :destroy
end

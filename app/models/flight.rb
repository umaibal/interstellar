class Flight < ApplicationRecord
    validates :seat, presence: true, uniqueness: true
    validates :destination, presence: true
    validates :departure_time, presence: true
    validates :arrival_time, presence: true

    belongs_to :users


end

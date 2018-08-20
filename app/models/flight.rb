class Flight < ApplicationRecord
    validates :total_seats, presence: true, numericality: true
    validates :destination, presence: true
    validates :departure_time, presence: true
    validates :arrival_time, presence: true

    has_many :tickets
    has_many :users, :through => :tickets
end

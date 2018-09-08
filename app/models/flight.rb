class Flight < ApplicationRecord
    validates :total_seats, presence: true, numericality: true
    validates :destination, presence: true
    # validates :departure_time, presence: true
    # validates :arrival_time, presence: true

    has_many :tickets
    before_destroy :ensure_not_referenced_by_ticket

    private

    # method below
    def ensure_not_referenced_by_ticket 
        unless tickets.empty?
            errors.add(:base, 'Tickets are present')
            throw :abort
        end
    end
end

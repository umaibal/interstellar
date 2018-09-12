class Document < ApplicationRecord
    validates :document_type, presence: true
    validates :expiration_date, presence: true

    belongs_to :users, optional: true
end

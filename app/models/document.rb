class Document < ApplicationRecord
    validates :document_type, presence: true
    validates :expiration_date, presence: true
    

end

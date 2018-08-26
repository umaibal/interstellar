class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :full_name, presence: true
    validates :country, presence: true
    validates :city, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, confirmation: true
    validates :password_confirmation, presence: true

    # has_many :flights, :through => :tickets
    has_many :documents
end

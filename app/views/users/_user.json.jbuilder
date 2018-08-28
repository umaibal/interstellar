json.extract! user, :id, :username, :full_name, :mailing_address, :country, :city, :phone_number, :email, :password_digest, :password_confirmation, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! order, :id, :full_name, :mailing_address, :country, :city, :phone_number, :email, :pay_type, :created_at, :updated_at
json.url order_url(order, format: :json)

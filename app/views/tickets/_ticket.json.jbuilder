json.extract! ticket, :id, :flight_id, :cart_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

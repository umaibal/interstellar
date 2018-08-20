json.extract! ticket, :id, :meal_preference, :seat_selection, :num_luggage, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)

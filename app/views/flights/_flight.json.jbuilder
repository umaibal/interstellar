json.extract! flight, :id, :seat, :meal_preference, :destination, :departure_time, :arrival_time, :created_at, :updated_at
json.url flight_url(flight, format: :json)

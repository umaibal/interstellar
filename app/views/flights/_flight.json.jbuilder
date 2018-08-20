json.extract! flight, :id, :total_seats, :destination, :departure_time, :arrival_time, :created_at, :updated_at
json.url flight_url(flight, format: :json)

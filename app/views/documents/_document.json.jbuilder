json.extract! document, :id, :document_type, :expiration_date, :passport_number, :drivers_licence_number, :created_at, :updated_at
json.url document_url(document, format: :json)

json.extract! input, :id, :name, :category, :example, :created_at, :updated_at
json.url input_url(input, format: :json)
json.extract! model_input, :id, :model_id, :input_id, :source_id, :units, :quantity, :actType, :created_at, :updated_at
json.url model_input_url(model_input, format: :json)
json.extract! model_inactive, :id, :model_id, :reason, :user_id, :date_created, :created_at, :updated_at
json.url model_inactive_url(model_inactive, format: :json)
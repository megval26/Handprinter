json.extract! model_comment, :id, :model_id, :user_id, :date_created, :text, :created_at, :updated_at
json.url model_comment_url(model_comment, format: :json)
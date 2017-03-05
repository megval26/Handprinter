json.extract! model_vote, :id, :model_id, :user_id, :created_at, :updated_at
json.url model_vote_url(model_vote, format: :json)
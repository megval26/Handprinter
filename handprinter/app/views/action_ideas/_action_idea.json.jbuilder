json.extract! action_idea, :id, :creator, :name, :description, :references, :category, :date_created, :active, :tags, :created_at, :updated_at
json.url action_idea_url(action_idea, format: :json)
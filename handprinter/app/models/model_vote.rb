class ModelVote < ActiveRecord::Base
  #relationships


  #validations
  validates :user_id, :model_id, presence: true

  #scopes


end

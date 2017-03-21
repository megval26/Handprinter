class ModelVote < ActiveRecord::Base
  #relationships
  has_one :model_id
  has_one :user_id

  #validations
  validates :user_id, :model_id, presence: true

end

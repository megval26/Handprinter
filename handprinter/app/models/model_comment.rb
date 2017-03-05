class ModelComment < ActiveRecord::Base
  #relationships
  belongs_to :model

  #validations
  validates :model_id, :user_id, :text, :date_created, presence: true
  validates :date_created, timeliness => {:on_or_after => Date.today}
  

  #scopes
 # by user
 # by model
 # By date


end

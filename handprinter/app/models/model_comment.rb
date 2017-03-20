class ModelComment < ActiveRecord::Base
  #relationships
  belongs_to :model

  #validations
  validates :model_id, :user_id, :text, :date_created, presence: true
  validates :date_created, :timeliness => {:on_or_after => Date.today}
  

 #scopes
 
 # by user
 scope :by_user, ->(user_id) { where("user_id = ?", user_id)}

 # by model 
 scope :by_model, ->(model_id) { where("model_id = ?", model_id)}

 # chronological
 scope :chronological, -> { order(:date_created)}


end

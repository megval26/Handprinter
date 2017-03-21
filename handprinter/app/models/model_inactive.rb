class ModelInactive < ActiveRecord::Base
  #relationships


  #validations
  validates :model_id, presence: true
  validates :date_created, timeliness => {:on_or_after => Date.today}


  #scopes

end

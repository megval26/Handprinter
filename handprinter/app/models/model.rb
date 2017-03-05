class Model < ActiveRecord::Base
  #relationships
  has_many :model_inputs
  #inputs through model inputs, need to check this relationship 
  has_many :inputs, through: :model_inputs
  has_many :claims 
  has_many :model_votes
  has_many :model_comments
  has_one :model_inactive
  

  #validations
  validates :source_id, :user_id, :action_idea, presence: true
  validates :category, inclusion: { in: 1..5}
  validates :category, numericality: true
  validates :date_created, :timeliness => {:on_or_after => Date.today}
  #validates :anchor =


  #scopes
	# By votes
	# By user
	# By action_idea
	# By date_created
	# Alphabetical
	# By category



end


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
	
  # Alphabetical
  scope :alphabetical, -> { order('action_idea') }

  # by user
  scope :by_user, ->(user_id) { where("user_id = ?", user_id)}

  # by category
  scope :by_category, ->(category_id) { where("category_id = ?", category_id)}

  # chronological
  scope :chronological, -> { order(:date_created) }


  #methods

  #by_votes
  #This needs testing/debugging
  def by_votes
    #SQL code -> aggregates model votes by model_id and then sorts in descending order
  end


end


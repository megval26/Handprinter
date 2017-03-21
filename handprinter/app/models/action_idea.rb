class ActionIdea < ActiveRecord::Base

  # Relationships
  # -----------------------------
  has_many :action_idea_comments
  has_many :action_idea_votes
  has_one :user
  has_many :models


  # Scopes
  # -----------------------------
  # list action ideas in alphabetical order
  scope :alphabetical, -> { order('name') }
  # get all the active action ideas(ideas that have not been marked as duplicates or removed by admin)
  scope :active, -> { where(active: true) }
  # search for all the owners in the system by either first or last name
  scope :search, ->(term) { where('name LIKE ?', "#{term}%") }

  # Misc Constants
  # -----------------------------
  CATEGORY_CHOICES = [['home', 'Home'], ['work', 'Work'], ['community', 'Community'],['food', 'Food'],['mobility', 'Mobility'],['clothing', 'Clothing'],['other', 'Other']]
  
  # Validations
  # -----------------------------
  # make sure required fields are present
  validates_presence_of :name, :user
  # if category is given, must be one of the choices given (no hacking this field)
  validates_inclusion_of :category, in: CATEGORY_CHOICES.map {|key, value| value}, message: "is not a cateogry option", allow_blank: true


  # Misc Methods
  #-------------------------------
  def numvotes 
  	return ActionIdeaVote.where(action_idea_id=self.id).count()
  end

  def comments 
    return ActionIdeaComment.where(action_idea_id=self.id).all()
  end
  
end

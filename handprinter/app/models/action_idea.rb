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


  # Validations
  # -----------------------------
  validates :name, presence: true

end

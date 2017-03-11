class ActionIdeaComment < ActiveRecord::Base

  # Relationships
  # -----------------------------
  belongs_to :action_idea
  belongs_to :user

  # Validations
  # -----------------------------
  # make sure required fields are present
  validates_presence_of :user, :action_idea
  

  # Misc Methods
  #-------------------------------
  def numComments(actionIdeaID) 
  	return ActionIdeaComment.where(actionIdeaID =self.action_idea_id).count()
  end

end

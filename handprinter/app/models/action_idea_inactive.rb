# Inactive Action Ideas are there own model so that system can keep track of reason why they were 
# 		made inactive and who authorized it to be set to inactive

class ActionIdeaInactive < ActiveRecord::Base

  # Relationships
  # -----------------------------
  has_one :action_idea
  has_one :user

  # Scopes
  # -----------------------------
  # list all inactive action ideas by order which they were made inactive
  scope :by_date, -> { order('date_created DESC') }

  # Misc Constants
  # -----------------------------
  REASON_CHOICES = [['duplicate', 'Duplicate'],['accident', 'Accident'], ['spam', 'Spam'],['inappropriate', 'Inappropriate'],['inaccurate', 'Inaccurate'],['other', 'Other']]

  # Validations
  # -----------------------------
  # make sure required fields are present
  validates_presence_of :user, :reason, :action_idea
  # if reason is given, must be one of the choices given (no hacking this field)
  validates_inclusion_of :reason, in: REASON_CHOICES.map {|key, value| value}, message: "is not a cateogry option", allow_blank: true


end

class ModelInput < ActiveRecord::Base

	belongs_to :model
	belongs_to :input
	has_one :source
	
	validates :units, numericality: { greater_than_or_equal_to: 0 }

	# should also check if units fall under the right category

end

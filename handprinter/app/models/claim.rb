class Claim < ActiveRecord::Base

	has_many :source
	belongs_to :model

	
end

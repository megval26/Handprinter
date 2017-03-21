class Claim < ActiveRecord::Base

	has_many :sources
	belongs_to :model

	
end

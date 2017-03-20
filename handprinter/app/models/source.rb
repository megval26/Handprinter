class Source < ActiveRecord::Base

	belongs_to :claim

	validates_presence_of :link
	# can further validate :link is an actual link

end

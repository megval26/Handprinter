class Input < ActiveRecord::Base

	has_many :model_inputs
	has_many :sources, through: :model_inputs

	validates_presence_of :name, :category

	#default_scope :ordered_by_category, -> { order('category') }

	# http://stackoverflow.com/questions/22175571/rails-group-articles-by-category


	# if specified, order by name instead
	scope :alphabetical,    -> { order('name') }

end

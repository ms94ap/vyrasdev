class Post < ApplicationRecord
	# self.site = "http://localhost:3000/"
	has_many :categories
	has_one :tag

	def as_json(options)
    super.merge(:include=>[:categories])
  end
end
class Post < ApplicationRecord
	# has_many :categories
	has_one :tag

	# def as_json(options)
 #    super.merge(:include=>[:categories])
 #  end
end
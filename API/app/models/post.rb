class Post < ApplicationRecord
	belongs_to :categories
	has_one :tag
	accepts_nested_attributes_for :tag
end

class Post < ApplicationRecord
	has_many :categories
	has_one :tag
	accepts_nested_attributes_for :categories, :tag
end

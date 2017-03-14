class PostSerializer < ActiveModel::Serializer
	attributes :name, :id, :category_id
	# has_many :categories
	# has_one :tag
	
end
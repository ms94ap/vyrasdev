class PostSerializer < ActiveModel::Serializer
	attributes :name, :id
	has_many :categories
	has_one :tag
	
end
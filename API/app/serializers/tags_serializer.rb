class TagSerializer < ActiveModel::Serializer
	attributes :name, :id
	belongs_to :posts
	
end
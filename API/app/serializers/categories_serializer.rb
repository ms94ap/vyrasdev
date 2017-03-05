class CategorySerializer < ActiveModel::Serializer
	attributes :type, :id
	belongs_to :posts
end
class CategorySerializer < ActiveModel::Serializer
	attributes :name, :id, :post_id
	belongs_to :posts
end
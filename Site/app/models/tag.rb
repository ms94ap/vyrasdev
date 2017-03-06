class Tag < ApplicationRecord
	# self.site = "http://localhost:3000/"
	belongs_to :post
end
class Post < ApplicationRecord
	has_many: categories
	has_many: tags
end

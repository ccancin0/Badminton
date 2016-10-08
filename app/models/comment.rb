class Comment < ApplicationRecord
	#don't have a 4th so no validations
	belongs_to :review
end

class Review < ApplicationRecord
	# Andrew still needs to add validations

  	belongs_to :subject, class_name: 'Film', foreign_key: 'film_id'
end

class Review < ApplicationRecord
	validates :title, presence: true
	validates :subtitle, length: { maximum: 40 }
	validates :stars, presence: true
	validates :body, allow_blank: true, length: { maximum: 2000 }
  	belongs_to :subject, class_name: 'Film', foreign_key: 'film_id'
  	belongs_to :reviewers
end

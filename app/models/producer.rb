class Producer < ApplicationRecord
	validates :name, presence: true, length: { maximum: 60 }
	validates :greeting, presence: true
	validates :mission_statement, presence: true
	validates :activation_date, presence: true

	has_many :films
end

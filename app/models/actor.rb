class Actor < ApplicationRecord
	validates :name, length: { maximum: 60 }, uniqueness: true, presence: true
	validates :gender, inclusion: { in: %w(male female non-binary category),
		message: "%{value} is not a valid gender" }, presence: true
	validates :homepage, allow_blank: true, format: { with: /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix}
	validates :age, numericality: { only_integer: true, greater_than: 1, less_than_or_equal_to: 125}, allow_blank: true
end

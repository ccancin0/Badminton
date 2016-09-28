class Reviewer < ApplicationRecord
	validates :handle, length: { maximum: 16 }, uniqueness: true, presence: true
	validates :phone, presence: true, format: { with: /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/ }
	validates :status, inclusion: { :in => ['top','second tier','amateur']}, allow_blank: true
	validates :years_active, :numericality => { :greater_than => 0, :less_than_or_equal_to => 125 }, allow_blank: true
end

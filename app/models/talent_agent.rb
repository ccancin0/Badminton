class TalentAgent < ApplicationRecord
	validates :first_name, length: { maximum: 60 }
	validates :last_name, length: { maximum: 60 }
	validates :dob, allow_blank: true
	validates :pitch, inclusion: { in: %w(high low medium) }
end

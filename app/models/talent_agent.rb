class TalentAgent < ApplicationRecord
	validates :first_name, length: { maximum: 60 }
	validates :last_name, length: { maximum: 60 }
	validates :dob, presence: true
	validates :pitch, inclusion: { in: %w(high low medium) }
	has_many :clients, class_name: 'Reviewer', foreign_key: 'talent_agent_id'
	has_many :actors
end

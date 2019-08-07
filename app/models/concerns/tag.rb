class Tag < ApplicationRecord
	validates :title, presence: true
	has_many :join_gotags
  has_many :gossips, through: :join_gotags
end

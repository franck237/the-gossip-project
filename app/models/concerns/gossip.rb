class Gossip < ApplicationRecord
	validates :title, length: { in: 3..14 }
	validates :content, presence: true
	belongs_to :user
	has_many :join_gotags
  has_many :tags, through: :join_gotags
  has_many :comments
  has_many :likes
end

class Article < ApplicationRecord
	validates :codigo, presence: true
	validates :description, presence: true
	validates :cantidad, presence: true
	belongs_to :user
end

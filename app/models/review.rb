class Review < ApplicationRecord
	# Association 
	belongs_to :book

	# Validation
	validates_presence_of :name, :rating, :title, :description
end

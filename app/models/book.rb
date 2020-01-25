class Book < ApplicationRecord
	# Association 
	has_many :reviews
	belongs_to :author

	# Custom scope
	scope :by_book_name, lambda{|book_name|where(["book_name=?", book_name])}

	# Validation
	validates_presence_of :book_name, :short_description, :long_description, :book_chapter, :publication_date, :genre
end

json.status "SUCCESS"
json.messages "Loaded books by author name"
json.data do 
	json.author @all_data do |author|
		json.extract! author, :id, :name, :author_bio, :awards
		if author.books.present?
			_book = author.books.order("created_at DESC")
			json.book _book do |book|
				json.extract! book, :id, :book_name, :short_description, :long_description, :book_chapter, :publication_date, :genre, :created_at
				if book.reviews.present?
					_reviews = book.reviews.order("created_at DESC")
					json.reviews _reviews do |review|
						json.extract! review, :rating, :name
					end
				end
			end
		end
	end
end



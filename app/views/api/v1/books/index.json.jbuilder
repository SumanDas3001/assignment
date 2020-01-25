json.status "SUCCESS"
json.messages "Loaded books"
json.data do
	json.books @books do |book|
		json.extract! book, :id, :book_name, :short_description, :long_description, :book_chapter, :publication_date, :genre, :created_at 
		if book.reviews.present?
			_book_review = book.reviews.order("created_at DESC")
			json.reviews_of_book _book_review do |review|
				json.extract! review, :rating, :name
			end
		end
	end
end 


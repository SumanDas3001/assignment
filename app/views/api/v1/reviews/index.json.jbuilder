json.status "SUCCESS"
json.messages "display all the reviews given"
json.data do
	json.reviews_given @reviews do |review|
		json.extract! review, :id, :name, :rating, :title, :description, :book_id 
	end
end 



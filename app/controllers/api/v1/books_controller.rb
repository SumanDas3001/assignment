module Api
	module V1
		class BooksController < ApplicationController
			
			### => 'index' API Defination 
			def index
				if authenticate_user_with_token == true
					@books = Book.order("created_at DESC")
					@books = @books.by_book_name(params[:book_name]).order("created_at DESC") if params[:book_name].present?
				end
			end


			## => Fetch data from all three table based on author name
			def get_all_data_by_author_name
				if authenticate_user_with_token == true
					@all_data = Author.order("created_at DESC")
					@all_data = @all_data.by_author_name(params[:name]).order("created_at DESC") if params[:name].present?
				end
			end
		end
	end
end
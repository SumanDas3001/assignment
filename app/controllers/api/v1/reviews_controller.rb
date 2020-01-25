module Api
	module V1
    class ReviewsController < ApplicationController
      def index
        if authenticate_user_with_token == true
          @reviews =  Review.where(name: params[:name])
        end
      end
    end
  end
end
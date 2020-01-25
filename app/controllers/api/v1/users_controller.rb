module Api
	module V1
		class UsersController < ApplicationController
			def index
			end

			def create
				user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
				if user.save
					render json: {status: 'SUCCESS', message:'User created', data:user},status: :ok
				else
					render json: {status: 'ERROR', message:'User not created', data:user.errors},status: :error
				end
			end

			def find_authenticate_user
				user = User.find_by_email(request.headers["email"]) if request.headers["email"].present?
				if user&.valid_password?(request.headers["password"])
					render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
				else
					render json: {status: 'ERROR', message:'User is not authorized'},status: :unauthorized
				end
			end
		end
	end
end

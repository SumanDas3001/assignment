class ApplicationController < ActionController::API

	before_action :authenticate_user_with_token

	def authenticate_user_with_token
		if request.headers["email"].present? and request.headers["token"].present?
			if User.find_by_email(request.headers["email"]).present? && User.by_authentication_token(request.headers["token"]).present?
				return true
			end
		else
			return false
		end
	end
end

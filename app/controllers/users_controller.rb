class UsersController < ApplicationController

	def current
		if current_user
			render json: current_user
		else
			render json: {}
		end
	end

	
end

class ProfilesController < ApplicationController
	before_action :set_user

	def show
		
	end

	def update
		@user.update(user_params)
	end

	private
		def set_user
			@user = User.find(params[:id])			
		end
		def user_params
			params.require(:user).permit(:email)
		end
end
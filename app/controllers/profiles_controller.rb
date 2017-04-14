class ProfilesController < ApplicationController
	before_action :set_user
	before_action :authenticate_user!, only: [:show, :update]
	before_action :authenticate_owner!, only: [:update]

	def show
		
	end

	def update
		respond_to do |format|
			if @user.update(user_params)
				format.html {redirect_to @user}
				format.json {render json: @user}
			else
				format.html {redirect_to @user, notice: "No se pudo actualizar"}
			end
		end
	end

	private
		def set_user
			@user = User.find(params[:id])			
		end
		def user_params
			params.require(:user).permit(:email, :dni, :lastname, :name, :bio)
		end
		def authenticate_owner!
			if current_user != @user
				redirect_to root_path, notice: "No estás autorizado a acceder a esta sección", status: :unauthorized
			end			
		end
		def authenticate_user!
			unless user_signed_in?
				redirect_to root_path, notice: "Primero debés iniciar sesión", status: :unauthorized
			end			
		end
end
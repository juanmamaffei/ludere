class Users::OmniauthCallbacksController < ApplicationController


	def facebook
		@user = User.from_omniauth(request.env["omniauth.auth"])

		if @user.persisted?
			@user.remember_me = true
			sign_in_and_redirect @user, event: :authentication
		else
			render :edit
		end

		session["devise.auth"] = request.env["omniauth.auth"] #Guardar la sesión en devise para que no se pierda

		
	end

	def custom_sign_up
		@user = User.from_omniauth(session["devise.auth"])
		if @user.update(user_params)
			sign_in_and_redirect @user, event: :authentication
		else
			render :edit
		end
	end

	def failure
		redirect_to new_user_session_path, notice: "Error al iniciar sesión. Intentá de nuevo."
	end

	private
		def user_params
			params.require(:user).permit(:name, :dni, :email)
		end
end
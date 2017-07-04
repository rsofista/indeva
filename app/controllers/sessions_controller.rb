class SessionsController < Devise::SessionsController
	def new
		@user = current_user || User.new
		render 'sign_in'
	end
end

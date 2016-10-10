class SessionsAuthController < ApplicationController
  def create
  	user = User.from_omniauth(request.env['omniauth.auth'])
  	log_in user
	flash[:warning] = "You must edit email."
	redirect_to edit_user_path(user)
  	# if logged_in?
  	# 	redirect_to root_url
  	# else
  	# 	log_in_auth user
  	# 	flash[:warning] = "You must edit email."
  	# 	redirect_to edit_user_path(user)
  	# end
  end

  def destroy
  	log_out if logged_in?
    redirect_to root_url
  end
end

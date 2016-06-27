class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      set_session_cart(user)
      flash[:notice] = "Logged in as #{user.first_name.capitalize}"
      if current_admin?
        redirect_to admin_profile_path
      else
        redirect_to session[:redirect]
      end
    else
      flash.now[:error] = "Invalid Credentials"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end

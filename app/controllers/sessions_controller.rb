class SessionsController < ApplicationController

  def new
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to "/#{current_user.username}"
    else
      fail
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_path
  end

end

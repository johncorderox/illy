class SessionsController < ApplicationController


  def new
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path unless user.has_username?
    else

    end
  end

end

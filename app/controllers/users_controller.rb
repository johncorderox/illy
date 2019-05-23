class UsersController < ApplicationController

  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
  end

  def create
    new_user = User.new(email: params[:email], password: params[:password])
      if new_user.save
        session[:user_id] = user.id
        redirect_to dash_path
      else
        redirect_back(fallback_location: root_path)
        flash[:notice] = new_user.errors.full_messages
    end
  end


end

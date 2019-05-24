class UsersController < ApplicationController

  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
  end

  def update
  if @update_user = User.find(params[:id]).update(user_params)
    flash[:success] = "Successfully Saved"
  else
    puts "#{@update_user.errors.full_messages}"
  end
  redirect_back(fallback_location: root_path)
end

  def create
    new_user = User.new(username: params[:username], email: params[:email], password: params[:password])
      if new_user.save
        session[:user_id] = new_user.id
        redirect_to "#{session[:user_id]}/edit_profile/"
      else
        redirect_back(fallback_location: root_path)
        flash[:notice] = new_user.errors.full_messages
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :bio, :phone_number, :twitter, :status, :looking_for)
    end


end

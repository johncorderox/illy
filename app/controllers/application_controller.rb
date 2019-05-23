class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery with: :exception

  def user_signed_in?
    !!current_user
  end

end

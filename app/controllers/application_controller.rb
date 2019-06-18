class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery with: :exception

    helper_method :is_admin?

  def user_signed_in?
    !!current_user
  end

  def completed_registration_check
    redirect_to welcome_path unless current_user.registered == 'Y'
  end

  def is_admin?
    redirect_to root_url unless current_user.permod
  end

end

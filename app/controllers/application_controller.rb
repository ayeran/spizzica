class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :verify_admin, :except =>:index

  def verify_admin
    :authenticate_user!
     redirect_to root_url unless has_role?(current_user, "admin")
  end

  def has_role?(current_user, role)
    return !!current_user.roles.find_by_name(role.to_s)
  end

  rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, :alert => exception.message
  end

end

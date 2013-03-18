class ApplicationController < ActionController::Base
  protect_from_forgery
 # before_filter :verify_admin, :except =>[:index,:show]

  def verify_admin
    :authenticate_user!
     redirect_to request.referer unless has_role?(current_user, "admin")
  end

  def has_role?(current_user, role)
    return !!(current_user.respond_to?("roles") && current_user.roles.find_by_name(role.to_s))
  end

  rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, :alert => exception.message
  end

end

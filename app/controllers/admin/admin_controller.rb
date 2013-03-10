class Admin::AdminController < ApplicationController
  layout "admin"
  before_filter :verify_admin

  def verify_admin
    :authenticate_user!
     redirect_to root_url unless has_role?(current_user, "admin")
    #redirect_to root_url unless current_user.roles.collect{|r| r.name}.include?("admin")
  end

  def current_ability
    @current_ability ||= AdminAbility.new(current_user)
  end
end


#!/bin/env ruby
# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
 # before_filter :verify_admin, :except =>[:index,:show]

  helper_method :cart_content, :current_cart

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

  private
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  private
  def cart_content
    content=[]
    priceTot=0
    current_cart.line_items.each do |c|
      item=Item.find_by_id(c.item_id).specify
      quantity=c.quantity
      price=item.price
      priceTot += quantity*price
      line="#{item.name} (#{quantity} x #{sprintf("%02.2f €", price)} )"
      content << line
     end
   content<<"Prezzo: #{sprintf("%02.2f €",priceTot)}"
   content
  end

  private
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end


end

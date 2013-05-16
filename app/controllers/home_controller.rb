class HomeController < ApplicationController
  def index
    render :layout => "landpage"
  end

  def spizzicaluna_one
    render :layout => "spizzicaluna_one"
  end

  def spizzicaluna_brewing
    render :layout => "spizzicaluna_brewing"
  end

  def spizzicaluna_open
    render :layout => "spizzicaluna_open"
  end

  def contacts
   ["one","brewing","open"].include?(params[:place]) ?
    (render :layout => 'spizzicaluna_'+params[:place]) : (render :layout => 'spizzicaluna_one')
  end

  def delivery
    render :layout => 'spizzicaluna_one'
  end


end

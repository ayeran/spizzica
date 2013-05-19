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

  def contacts_one
    render :layout => 'spizzicaluna_one'
  end

  def delivery_one
    render :layout => 'spizzicaluna_one'
  end

  def bar_one
    render :layout => 'spizzicaluna_one'
  end

  def contacts_brewing
    render :layout => 'spizzicaluna_brewing'
  end


  def bar_brewing
    render :layout => 'spizzicaluna_brewing'
  end


end

class HomeController < ApplicationController
  def index
    render :layout => "landpage"
  end

  def spizzicaluna_one
    render :layout => "spizzicaluna_one"
  end

  def spizzicaluna_brewing
    # when the corresponding template is ready, to change the template
    render 'bar_brewing', :layout => "spizzicaluna_brewing"
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

  def gallery_brewing
    render :layout => 'spizzicaluna_brewing'
  end


  def bar_brewing
    render :layout => 'spizzicaluna_brewing'
  end

  def gallery_one
    render :layout => 'spizzicaluna_one'
  end

  def error
    @url_requested = root_url.to_s + params[:a].to_s
    render "error", :layout => 'spizzicaluna_one'
  end

  def bar_one_prenotazione
    render :layout => 'spizzicaluna_one'
  end

end

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
    # @images = Dir.glob('app/assets/images/locale/brewing/thumbs/*.jpg')
    @images = ["app/assets/images/locale/brewing/thumbs/brewing_007.jpg", "app/assets/images/locale/brewing/thumbs/brewing_005.jpg", "app/assets/images/locale/brewing/thumbs/brewing_002.jpg", "app/assets/images/locale/brewing/thumbs/brewing_003.jpg", "app/assets/images/locale/brewing/thumbs/brewing_006.jpg", "app/assets/images/locale/brewing/thumbs/brewing_001.jpg", "app/assets/images/locale/brewing/thumbs/brewing_004.jpg"]

    render 'gallery_brewing', :layout => 'spizzicaluna_brewing'
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


  def gallery_spizzicaluna
    # @images = Dir.glob('app/assets/images/locale/one/thumbs/*.jpg')
    @images = ["app/assets/images/locale/one/thumbs/spizzicaluna008.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna017.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna019.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna009.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna018.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna010.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna005.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna014.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna016.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna007.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna001.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna006.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna011.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna003.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna013.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna012.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna015.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna004.jpg", "app/assets/images/locale/one/thumbs/spizzicaluna002.jpg"] ;
    render :gallery_spizzicaluna, :layout => 'spizzicaluna_one'
  end

end

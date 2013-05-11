class HomeController < ApplicationController
  def index
    render :layout => "landpage"
  end

  def spizzicalunaone
    render :layout => "spizzicaluna_one_layout"
  end

end

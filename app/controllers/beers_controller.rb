class BeersController < ApplicationController
   layout "spizzicaluna_one"
   before_filter :verify_admin, :except =>[:index,:show]

  # GET /beers
  # GET /beers.json
  def index
    @beers = Beer.order("lower(name) ASC").all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beers }
    end
  end

  # GET /beers/1
  # GET /beers/1.json
  def show
    @beer = Beer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beer }
    end
  end

  # GET /beers/new
  # GET /beers/new.json
  def new
    @beer = Beer.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beer }
    end
  end

  # GET /beers/1/edit
  def edit
    @beer = Beer.find(params[:id])
  end

  # POST /beers
  # POST /beers.json
  def create
    @beer = Beer.new(params[:beer])
    params[:color].each{|col|
      color = Color.find_by_name(col)
      @beer.colors << color
    }
    params[:foam].each{|foam|
      foam = Foam.find_by_name(foam)
      @beer.foams << foam
    }
    params[:beerstyle].each{|bs|
      beerstyle = Beerstyle.find_by_name(bs)
      @beer.beerstyles << beerstyle
    }
    params[:aroma].each{|aroma|
      aroma = Aroma.find_by_name(aroma)
      @beer.aromas << aroma
    }
    params[:taste].each{|taste|
      taste = Taste.find_by_name(taste)
      @beer.tastes << taste
    }


    respond_to do |format|
      if @beer.save
        format.html { redirect_to @beer, notice: 'Beer was successfully created.' }
        format.json { render json: @beer, status: :created, location: @beer }
      else
        format.html { render action: "new" }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beers/1
  # PUT /beers/1.json
  def update
    @beer = Beer.find(params[:id])
    @beer.colors.clear
    params[:color].each{|col|
      color = Color.find_by_name(col)
      @beer.colors << color
    }
    @beer.foams.clear
    params[:foam].each{|foam|
      foam = Foam.find_by_name(foam)
      @beer.foams << foam
    }
    @beer.beerstyles.clear
    params[:beerstyle].each{|bs|
      beerstyle = Beerstyle.find_by_name(bs)
      @beer.beerstyles << beerstyle
    }
    @beer.aromas.clear
    params[:aroma].each{|aroma|
      aroma = Aroma.find_by_name(aroma)
      @beer.aromas << aroma
    }
    @beer.tastes.clear
    params[:taste].each{|taste|
      taste = Taste.find_by_name(taste)
      @beer.tastes << taste
    }


    respond_to do |format|
      if @beer.update_attributes(params[:beer])
        format.html { redirect_to @beer, notice: 'Beer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beers/1
  # DELETE /beers/1.json
  def destroy
    @beer = Beer.find(params[:id])
    @beer.destroy

    respond_to do |format|
      format.html { redirect_to beers_url }
      format.json { head :ok }
    end
  end
end

class BeersController < ApplicationController
   layout "spizzicaluna_one"
   before_filter :verify_admin, :except =>[:index,:show,:lager,:doppio_malto,:big_format]
   helper_method :sort_column, :sort_direction

  def lager
    bs = Beerstyle.where(:name => "lager").first
    @beers = bs.beers.paginate(:page=>params[:page])
    render "index"
  end

  def doppio_malto
    bs = Beerstyle.where(:name => "doppio malto").first
    @beers = bs.beers.paginate(:page=>params[:page])
    render "index"
  end

  def big_format
    @beers = Beer.where("volume > ?", 50).paginate(:page=>params[:page])
    render "index"
  end


  # GET /beers
  # GET /beers.json
  def index
    @beers = Beer.search(params[:search]).order(sort_column + " " + sort_direction).
      paginate(:page=>params[:page])
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

  private
  def sort_column
    attr=params[:sort]
## if the attribute is of text or string type, case should be ignored. Otherwise - not
## previously it was a bug: when to a decimal there was applied "lower", the result was upredictable
    if Beer.column_names.include?(attr)
      [:string, :text].include?(Beer.columns_hash[attr].type) ? "lower(#{attr})" : "#{attr}"
      else
      "lower(name)"
      end
  end



end

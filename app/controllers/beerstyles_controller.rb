class BeerstylesController < ApplicationController
   before_filter :verify_admin, :except =>[:index,:show]
  # GET /beerstyles
  # GET /beerstyles.json
  def index
    @beerstyles = Beerstyle.order("lower(name) ASC").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beerstyles }
    end
  end

  # GET /beerstyles/1
  # GET /beerstyles/1.json
  def show
    @beerstyle = Beerstyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beerstyle }
    end
  end

  # GET /beerstyles/new
  # GET /beerstyles/new.json
  def new
    @beerstyle = Beerstyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beerstyle }
    end
  end

  # GET /beerstyles/1/edit
  def edit
    @beerstyle = Beerstyle.find(params[:id])
  end

  # POST /beerstyles
  # POST /beerstyles.json
  def create
    @beerstyle = Beerstyle.new(params[:beerstyle])

    respond_to do |format|
      if @beerstyle.save
        format.html { redirect_to @beerstyle, notice: 'Beerstyle was successfully created.' }
        format.json { render json: @beerstyle, status: :created, location: @beerstyle }
      else
        format.html { render action: "new" }
        format.json { render json: @beerstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beerstyles/1
  # PUT /beerstyles/1.json
  def update
    @beerstyle = Beerstyle.find(params[:id])

    respond_to do |format|
      if @beerstyle.update_attributes(params[:beerstyle])
        format.html { redirect_to @beerstyle, notice: 'Beerstyle was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beerstyle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beerstyles/1
  # DELETE /beerstyles/1.json
  def destroy
    @beerstyle = Beerstyle.find(params[:id])
    @beerstyle.destroy

    respond_to do |format|
      format.html { redirect_to beerstyles_url }
      format.json { head :ok }
    end
  end
end

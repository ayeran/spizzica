class AromasController < ApplicationController
   before_filter :verify_admin, :except =>[:index,:show]
  # GET /aromas
  # GET /aromas.json
  def index
    @aromas = Aroma.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aromas }
    end
  end

  # GET /aromas/1
  # GET /aromas/1.json
  def show
    @aroma = Aroma.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aroma }
    end
  end

  # GET /aromas/new
  # GET /aromas/new.json
  def new
    @aroma = Aroma.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aroma }
    end
  end

  # GET /aromas/1/edit
  def edit
    @aroma = Aroma.find(params[:id])
  end

  # POST /aromas
  # POST /aromas.json
  def create
    @aroma = Aroma.new(params[:aroma])

    respond_to do |format|
      if @aroma.save
        format.html { redirect_to @aroma, notice: 'Aroma was successfully created.' }
        format.json { render json: @aroma, status: :created, location: @aroma }
      else
        format.html { render action: "new" }
        format.json { render json: @aroma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aromas/1
  # PUT /aromas/1.json
  def update
    @aroma = Aroma.find(params[:id])

    respond_to do |format|
      if @aroma.update_attributes(params[:aroma])
        format.html { redirect_to @aroma, notice: 'Aroma was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @aroma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aromas/1
  # DELETE /aromas/1.json
  def destroy
    @aroma = Aroma.find(params[:id])
    @aroma.destroy

    respond_to do |format|
      format.html { redirect_to aromas_url }
      format.json { head :ok }
    end
  end
end

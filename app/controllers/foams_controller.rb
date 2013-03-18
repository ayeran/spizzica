class FoamsController < ApplicationController
   before_filter :verify_admin, :except =>[:index,:show]
  # GET /foams
  # GET /foams.json
  def index
    @foams = Foam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foams }
    end
  end

  # GET /foams/1
  # GET /foams/1.json
  def show
    @foam = Foam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foam }
    end
  end

  # GET /foams/new
  # GET /foams/new.json
  def new
    @foam = Foam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foam }
    end
  end

  # GET /foams/1/edit
  def edit
    @foam = Foam.find(params[:id])
  end

  # POST /foams
  # POST /foams.json
  def create
    @foam = Foam.new(params[:foam])

    respond_to do |format|
      if @foam.save
        format.html { redirect_to @foam, notice: 'Foam was successfully created.' }
        format.json { render json: @foam, status: :created, location: @foam }
      else
        format.html { render action: "new" }
        format.json { render json: @foam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foams/1
  # PUT /foams/1.json
  def update
    @foam = Foam.find(params[:id])

    respond_to do |format|
      if @foam.update_attributes(params[:foam])
        format.html { redirect_to @foam, notice: 'Foam was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foams/1
  # DELETE /foams/1.json
  def destroy
    @foam = Foam.find(params[:id])
    @foam.destroy

    respond_to do |format|
      format.html { redirect_to foams_url }
      format.json { head :ok }
    end
  end
end

class BeveragecategoriesController < ApplicationController
  before_filter :verify_admin, :except =>[:index,:show]
  layout "spizzicaluna_one"

  # GET /beveragecategories
  # GET /beveragecategories.json
  def index
    @beveragecategories = Beveragecategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beveragecategories }
    end
  end

  # GET /beveragecategories/1
  # GET /beveragecategories/1.json
  def show
    @beveragecategory = Beveragecategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beveragecategory }
    end
  end

  # GET /beveragecategories/new
  # GET /beveragecategories/new.json
  def new
    @beveragecategory = Beveragecategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beveragecategory }
    end
  end

  # GET /beveragecategories/1/edit
  def edit
    @beveragecategory = Beveragecategory.find(params[:id])
  end

  # POST /beveragecategories
  # POST /beveragecategories.json
  def create
    @beveragecategory = Beveragecategory.new(params[:beveragecategory])

    respond_to do |format|
      if @beveragecategory.save
        format.html { redirect_to @beveragecategory, notice: 'Beveragecategory was successfully created.' }
        format.json { render json: @beveragecategory, status: :created, location: @beveragecategory }
      else
        format.html { render action: "new" }
        format.json { render json: @beveragecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /beveragecategories/1
  # PUT /beveragecategories/1.json
  def update
    @beveragecategory = Beveragecategory.find(params[:id])

    respond_to do |format|
      if @beveragecategory.update_attributes(params[:beveragecategory])
        format.html { redirect_to @beveragecategory, notice: 'Beveragecategory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beveragecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beveragecategories/1
  # DELETE /beveragecategories/1.json
  def destroy
    @beveragecategory = Beveragecategory.find(params[:id])
    @beveragecategory.destroy

    respond_to do |format|
      format.html { redirect_to beveragecategories_url }
      format.json { head :ok }
    end
  end
end

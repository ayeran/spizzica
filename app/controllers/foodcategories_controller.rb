class FoodcategoriesController < ApplicationController

  before_filter :verify_admin, :except =>[:index,:show]
  layout "spizzicaluna_one"
  # GET /foodcategories
  # GET /foodcategories.json
  def index
    @foodcategories = Foodcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foodcategories }
    end
  end

  # GET /foodcategories/1
  # GET /foodcategories/1.json
  def show
    @foodcategory = Foodcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foodcategory }
    end
  end

  # GET /foodcategories/new
  # GET /foodcategories/new.json
  def new
    @foodcategory = Foodcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foodcategory }
    end
  end

  # GET /foodcategories/1/edit
  def edit
    @foodcategory = Foodcategory.find(params[:id])
  end

  # POST /foodcategories
  # POST /foodcategories.json
  def create
    @foodcategory = Foodcategory.new(params[:foodcategory])

    respond_to do |format|
      if @foodcategory.save
        format.html { redirect_to @foodcategory, notice: 'Foodcategory was successfully created.' }
        format.json { render json: @foodcategory, status: :created, location: @foodcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @foodcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foodcategories/1
  # PUT /foodcategories/1.json
  def update
    @foodcategory = Foodcategory.find(params[:id])

    respond_to do |format|
      if @foodcategory.update_attributes(params[:foodcategory])
        format.html { redirect_to @foodcategory, notice: 'Foodcategory was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @foodcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foodcategories/1
  # DELETE /foodcategories/1.json
  def destroy
    @foodcategory = Foodcategory.find(params[:id])
    @foodcategory.destroy

    respond_to do |format|
      format.html { redirect_to foodcategories_url }
      format.json { head :ok }
    end
  end
end

class ItemstatusesController < ApplicationController
  # GET /itemstatuses
  # GET /itemstatuses.json
  def index
    @itemstatuses = Itemstatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itemstatuses }
    end
  end

  # GET /itemstatuses/1
  # GET /itemstatuses/1.json
  def show
    @itemstatus = Itemstatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itemstatus }
    end
  end

  # GET /itemstatuses/new
  # GET /itemstatuses/new.json
  def new
    @itemstatus = Itemstatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @itemstatus }
    end
  end

  # GET /itemstatuses/1/edit
  def edit
    @itemstatus = Itemstatus.find(params[:id])
  end

  # POST /itemstatuses
  # POST /itemstatuses.json
  def create
    @itemstatus = Itemstatus.new(params[:itemstatus])

    respond_to do |format|
      if @itemstatus.save
        format.html { redirect_to @itemstatus, notice: 'Itemstatus was successfully created.' }
        format.json { render json: @itemstatus, status: :created, location: @itemstatus }
      else
        format.html { render action: "new" }
        format.json { render json: @itemstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itemstatuses/1
  # PUT /itemstatuses/1.json
  def update
    @itemstatus = Itemstatus.find(params[:id])

    respond_to do |format|
      if @itemstatus.update_attributes(params[:itemstatus])
        format.html { redirect_to @itemstatus, notice: 'Itemstatus was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @itemstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemstatuses/1
  # DELETE /itemstatuses/1.json
  def destroy
    @itemstatus = Itemstatus.find(params[:id])
    @itemstatus.destroy

    respond_to do |format|
      format.html { redirect_to itemstatuses_url }
      format.json { head :ok }
    end
  end
end

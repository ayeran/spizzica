class LidsController < ApplicationController
  # GET /lids
  # GET /lids.json
  def index
    @lids = Lid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lids }
    end
  end

  # GET /lids/1
  # GET /lids/1.json
  def show
    @lid = Lid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lid }
    end
  end

  # GET /lids/new
  # GET /lids/new.json
  def new
    @lid = Lid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lid }
    end
  end

  # GET /lids/1/edit
  def edit
    @lid = Lid.find(params[:id])
  end

  # POST /lids
  # POST /lids.json
  def create
    @lid = Lid.new(params[:lid])

    respond_to do |format|
      if @lid.save
        format.html { redirect_to @lid, notice: 'Lid was successfully created.' }
        format.json { render json: @lid, status: :created, location: @lid }
      else
        format.html { render action: "new" }
        format.json { render json: @lid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lids/1
  # PUT /lids/1.json
  def update
    @lid = Lid.find(params[:id])

    respond_to do |format|
      if @lid.update_attributes(params[:lid])
        format.html { redirect_to @lid, notice: 'Lid was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lids/1
  # DELETE /lids/1.json
  def destroy
    @lid = Lid.find(params[:id])
    @lid.destroy

    respond_to do |format|
      format.html { redirect_to lids_url }
      format.json { head :ok }
    end
  end
end

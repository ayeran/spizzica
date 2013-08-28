class OnePhotosController < ApplicationController
  layout "spizzicaluna_one"
  # GET /one_photos
  # GET /one_photos.json
  def index
    # @one_photos = Dir['app/assets/images/locale/thumbs/*.jpg']
    @one_photos = ["app/assets/images/locale/thumbs/spizzicaluna014.jpg", "app/assets/images/locale/thumbs/spizzicaluna008.jpg", "app/assets/images/locale/thumbs/spizzicaluna011.jpg", "app/assets/images/locale/thumbs/spizzicaluna004.jpg", "app/assets/images/locale/thumbs/spizzicaluna018.jpg", "app/assets/images/locale/thumbs/spizzicaluna017.jpg", "app/assets/images/locale/thumbs/spizzicaluna007.jpg", "app/assets/images/locale/thumbs/spizzicaluna006.jpg", "app/assets/images/locale/thumbs/spizzicaluna013.jpg", "app/assets/images/locale/thumbs/spizzicaluna019.jpg", "app/assets/images/locale/thumbs/spizzicaluna012.jpg", "app/assets/images/locale/thumbs/spizzicaluna016.jpg", "app/assets/images/locale/thumbs/spizzicaluna010.jpg", "app/assets/images/locale/thumbs/spizzicaluna001.jpg", "app/assets/images/locale/thumbs/spizzicaluna015.jpg", "app/assets/images/locale/thumbs/spizzicaluna003.jpg", "app/assets/images/locale/thumbs/spizzicaluna005.jpg", "app/assets/images/locale/thumbs/spizzicaluna002.jpg", "app/assets/images/locale/thumbs/spizzicaluna009.jpg"]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @one_photos }
    end
  end

  # GET /one_photos/1
  # GET /one_photos/1.json
  def show
    @one_photo = OnePhoto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @one_photo }
    end
  end

  # GET /one_photos/new
  # GET /one_photos/new.json
  def new
    @one_photo = OnePhoto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @one_photo }
    end
  end

  # GET /one_photos/1/edit
  def edit
    @one_photo = OnePhoto.find(params[:id])
  end

  # POST /one_photos
  # POST /one_photos.json
  def create
    @one_photo = OnePhoto.new(params[:one_photo])

    respond_to do |format|
      if @one_photo.save
        format.html { redirect_to @one_photo, notice: 'One photo was successfully created.' }
        format.json { render json: @one_photo, status: :created, location: @one_photo }
      else
        format.html { render action: "new" }
        format.json { render json: @one_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /one_photos/1
  # PUT /one_photos/1.json
  def update
    @one_photo = OnePhoto.find(params[:id])

    respond_to do |format|
      if @one_photo.update_attributes(params[:one_photo])
        format.html { redirect_to @one_photo, notice: 'One photo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @one_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /one_photos/1
  # DELETE /one_photos/1.json
  def destroy
    @one_photo = OnePhoto.find(params[:id])
    @one_photo.destroy

    respond_to do |format|
      format.html { redirect_to one_photos_url }
      format.json { head :ok }
    end
  end
end

class OrdersController < ApplicationController
   before_filter :verify_admin#, :except =>[:index,:show]
  # GET /orders
  # GET /orders.json


  def index
    @orders = Order.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])

    secretPhrase=@order.generatePhrase
    while Order.find_by_secretPhrase(secretPhrase) do
      secretPhrase=@order.generatePhrase
    end
    @order.secretPhrase=secretPhrase

    status_first = Status.find_by_name("ricevuto")
    @order.statuses << status_first

    price=0
    params[:item].each{|itemid,quantity|
      q=quantity.to_i
      if (q!=0)
        price = price + q * Item.find(itemid).specify.price
        @order.ordercontents << Ordercontent.new({:order_id => 2, :item_id => itemid, :quantity => q})
       end
      }
      @order.price=price

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  def update
    @order = Order.find(params[:id])
    if params[:status]
      @order.statuses << Status.find_by_id(params[:status])
    end

    respond_to do |format|
      if @order.update_attributes(params[:order])
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /orders/1
  # DELETE /orders/1.json
  # def destroy
    # @order = Order.find(params[:id])
    # @order.ordercontents.each{|ordercontent|
      # ordercontent.destroy
    # }
    # @order.trackings.each{|track|
      # track.destroy
    # }
#
    # @order.destroy
#
    # respond_to do |format|
      # format.html { redirect_to orders_url }
      # format.json { head :ok }
    # end
  # end
end

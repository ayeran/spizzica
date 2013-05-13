#!/bin/env ruby
# encoding: utf-8

class OrdersController < ApplicationController
  layout "spizzicaluna_one"
   before_filter :verify_admin, :except =>[:new,:show,:create,:control]
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
    @cart_content=current_cart.line_items
    @beers=@cart_content.select{|li|
      li.item.name=="Beer"}.map{|li|
        {:beer=>li.item.specify,:quantity => li.quantity}
        }.to_a.each_slice(2)
    @sandwiches=@cart_content.select{|li|
      li.item.name=="Sandwich"}.map{|li|
        {:sandwich=>li.item.specify,:quantity => li.quantity}
        }.to_a.each_slice(2)
    @bruschette=@cart_content.select{|li|
      li.item.name=="Bruschetta"}.map{|li|
        {:bruschetta => li.item.specify, :quantity => li.quantity}
        }.to_a.each_slice(2)


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
    @order.time = DateTime.new(params[:timeY].to_i,
      Order.months.index(params[:timeM]),
      params[:timeD].to_i,
      params[:timeH].to_i,
      params[:timeMin].to_i)

    secretPhrase=@order.generatePhrase
    while Order.find_by_secretPhrase(secretPhrase) do
      secretPhrase=@order.generatePhrase
    end
    @order.secretPhrase=secretPhrase

    status_first = Status.find_by_name("ricevuto")
    @order.statuses << status_first

    price=0
    current_cart.line_items.each{|li|
      q=li.quantity.to_i
      itemid=li.item.id
      if (q!=0)
        price = price + q * Item.find(itemid).specify.price
        @order.ordercontents << Ordercontent.new({:item_id => itemid, :quantity => q})
       end
      # after enrolling the shopping cart line
      # into the order contents, remove this shopping cart line
      li.destroy
      }

      current_cart.destroy

    # params[:item].each{|itemid,quantity|
      # q=quantity.to_i
      # if (q!=0)
        # price = price + q * Item.find(itemid).specify.price
        # #@order.ordercontents << Ordercontent.new({:item_id => itemid, :quantity => q})
       # end
      # }
      @order.price=price

    respond_to do |format|
      if @order.save
        UserMailer.sendOrder(@order).deliver
        format.html {
          redirect_to url_for(:controller => 'orders',
          :action => 'control',
          :e => @order.email,
          :f=>@order.secretPhrase,
          :only_path => false,
          :escape => false ), notice: 'L\'ordine è stato creato con successo.' }
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

  def control
    @email = params[:e]
    @phrase = params[:f]
    if (@email && @phrase)
      @order = Order.find_by_email_and_secretPhrase(@email,@phrase)
      if @order
        render 'show'
      end
    end

  end

end

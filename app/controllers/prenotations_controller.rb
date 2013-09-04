#!/bin/env ruby
# encoding: utf-8
class PrenotationsController < ApplicationController
  layout "spizzicaluna_one"

  # GET /prenotations
  # GET /prenotations.json
  def index
    # @prenotations = Prenotation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prenotations }
    end
  end

  # GET /prenotations/1
  # GET /prenotations/1.json
  # def show
    # @prenotation = Prenotation.find(params[:id])
#
    # respond_to do |format|
      # format.html # show.html.erb
      # format.json { render json: @prenotation }
    # end
  # end

  # GET /prenotations/new
  # GET /prenotations/new.json
  def new
    @prenotation = Prenotation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prenotation }
    end
  end

  # # GET /prenotations/1/edit
  # def edit
    # @prenotation = Prenotation.find(params[:id])
  # end

  # POST /prenotations
  # POST /prenotations.json
  def create

    @prenotation = Prenotation.new(params[:prenotation].except("date(1i)", "date(2i)", "date(3i)","date(4i)", "date(5i)"))
    @prenotation.date = DateTime.new(params[:prenotation]["date(1i)"].to_i,
      params[:prenotation]["date(2i)"].to_i,
      params[:prenotation]["date(3i)"].to_i,
      params[:prenotation]["date(4i)"].to_i,
      params[:prenotation]["date(5i)"].to_i)
  if @prenotation.valid?
    # TODO send message here
    UserMailer.sendPrenotation(@prenotation).deliver
    UserMailer.sendPrenotationNotification(@prenotation).deliver
    flash[:notice] = "La prenotazione è andata a buon fine!"
    redirect_to prenotations_path
  else
    render :action => 'new'
  end
    # respond_to do |format|
      # if @prenotation.save
        # format.html { redirect_to @prenotation, notice: 'Prenotation was successfully created.' }
        # format.json { render json: @prenotation, status: :created, location: @prenotation }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @prenotation.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # # PUT /prenotations/1
  # # PUT /prenotations/1.json
  # def update
    # @prenotation = Prenotation.find(params[:id])
#
    # respond_to do |format|
      # if @prenotation.update_attributes(params[:prenotation])
        # format.html { redirect_to @prenotation, notice: 'Prenotation was successfully updated.' }
        # format.json { head :ok }
      # else
        # format.html { render action: "edit" }
        # format.json { render json: @prenotation.errors, status: :unprocessable_entity }
      # end
    # end
  # end

  # # DELETE /prenotations/1
  # # DELETE /prenotations/1.json
  # def destroy
    # @prenotation = Prenotation.find(params[:id])
    # @prenotation.destroy
#
    # respond_to do |format|
      # format.html { redirect_to prenotations_url }
      # format.json { head :ok }
    # end
  # end
end

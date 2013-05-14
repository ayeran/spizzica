#!/bin/env ruby
# encoding: utf-8
class BruschettaController < ApplicationController
  layout "spizzicaluna_one"
  before_filter :verify_admin, :except =>[:index,:show]
  helper_method :sort_column, :sort_direction
  # GET /bruschetta
  # GET /bruschetta.json
  def index
    @bruschetta = Bruschettum.order(sort_column + " " + sort_direction)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bruschetta }
    end
  end

  # GET /bruschetta/1
  # GET /bruschetta/1.json
  def show
    @bruschettum = Bruschettum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bruschettum }
    end
  end

  # GET /bruschetta/new
  # GET /bruschetta/new.json
  def new
    @bruschettum = Bruschettum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bruschettum }
    end
  end

  # GET /bruschetta/1/edit
  def edit
    @bruschettum = Bruschettum.find(params[:id])
  end

  # POST /bruschetta
  # POST /bruschetta.json
  def create
    @bruschettum = Bruschettum.new(params[:bruschettum])
    params[:ingredient].each{|ingr|
      @bruschettum.ingredients << Ingredient.find_by_name(ingr)
    }


    respond_to do |format|
      if @bruschettum.save
        format.html { redirect_to @bruschettum, notice: 'Bruschetta è stata creata con successo.' }
        format.json { render json: @bruschettum, status: :created, location: @bruschettum }
      else
        format.html { render action: "new" }
        format.json { render json: @bruschettum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bruschetta/1
  # PUT /bruschetta/1.json
  def update
    @bruschettum = Bruschettum.find(params[:id])
    @bruschettum.ingredients.clear
    params[:ingredient].each{|ingr|
     @bruschettum.ingredients << Ingredient.find_by_name(ingr)
    }

    respond_to do |format|
      if @bruschettum.update_attributes(params[:bruschettum])
        format.html { redirect_to @bruschettum, notice: 'Bruschettum was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bruschettum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bruschetta/1
  # DELETE /bruschetta/1.json
  def destroy
    @bruschettum = Bruschettum.find(params[:id])
    @bruschettum.destroy

    respond_to do |format|
      format.html { redirect_to bruschetta_url }
      format.json { head :ok }
    end
  end

 private
  def sort_column
    Bruschettum.column_names.include?(params[:sort]) ? "lower(#{params[:sort]})" : "lower(name)"
  end
end

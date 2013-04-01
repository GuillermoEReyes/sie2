class GeneralesController < ApplicationController
  # GET /generales
  # GET /generales.json
  def index
    @generales = General.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @generales }
    end
  end

  # GET /generales/1
  # GET /generales/1.json
  def show
    @general = General.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @general }
    end
  end

  # GET /generales/new
  # GET /generales/new.json
  def new
    @general = General.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general }
    end
  end

  # GET /generales/1/edit
  def edit
    @general = General.find(params[:id])
  end

  # POST /generales
  # POST /generales.json
  def create
    @general = General.new(params[:general])

    respond_to do |format|
      if @general.save
        format.html { redirect_to @general, notice: 'General was successfully created.' }
        format.json { render json: @general, status: :created, location: @general }
      else
        format.html { render action: "new" }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /generales/1
  # PUT /generales/1.json
  def update
    @general = General.find(params[:id])

    respond_to do |format|
      if @general.update_attributes(params[:general])
        format.html { redirect_to @general, notice: 'General was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generales/1
  # DELETE /generales/1.json
  def destroy
    @general = General.find(params[:id])
    @general.destroy

    respond_to do |format|
      format.html { redirect_to generales_url }
      format.json { head :no_content }
    end
  end
end

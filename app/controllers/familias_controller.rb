class FamiliasController < ApplicationController
  # GET /familias
  # GET /familias.json
  def index
    @familias = Familia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @familias }
    end
  end

  # GET /familias/1
  # GET /familias/1.json
  def show
    @familia = Familia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @familia }
    end
  end

  # GET /familias/new
  # GET /familias/new.json
  def new
    @familia = Familia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @familia }
    end
  end

  # GET /familias/1/edit
  def edit
    @familia = Familia.find(params[:id])
  end

  # POST /familias
  # POST /familias.json
  def create
    @familia = Familia.new(params[:familia])

    respond_to do |format|
      if @familia.save
        format.html { redirect_to @familia, notice: 'Familia was successfully created.' }
        format.json { render json: @familia, status: :created, location: @familia }
      else
        format.html { render action: "new" }
        format.json { render json: @familia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /familias/1
  # PUT /familias/1.json
  def update
    @familia = Familia.find(params[:id])

    respond_to do |format|
      if @familia.update_attributes(params[:familia])
        format.html { redirect_to @familia, notice: 'Familia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @familia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familias/1
  # DELETE /familias/1.json
  def destroy
    @familia = Familia.find(params[:id])
    @familia.destroy

    respond_to do |format|
      format.html { redirect_to familias_url }
      format.json { head :no_content }
    end
  end
end

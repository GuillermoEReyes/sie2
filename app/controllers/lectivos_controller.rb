class LectivosController < ApplicationController
  # GET /lectivos
  # GET /lectivos.json
  def index
    @lectivos = Lectivo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lectivos }
    end
  end

  # GET /lectivos/1
  # GET /lectivos/1.json
  def show
    @lectivo = Lectivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lectivo }
    end
  end

  # GET /lectivos/new
  # GET /lectivos/new.json
  def new
    @lectivo = Lectivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lectivo }
    end
  end

  # GET /lectivos/1/edit
  def edit
    @lectivo = Lectivo.find(params[:id])
  end

  # POST /lectivos
  # POST /lectivos.json
  def create
    @lectivo = Lectivo.new(params[:lectivo])

    respond_to do |format|
      if @lectivo.save
        format.html { redirect_to @lectivo, notice: 'Lectivo was successfully created.' }
        format.json { render json: @lectivo, status: :created, location: @lectivo }
      else
        format.html { render action: "new" }
        format.json { render json: @lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lectivos/1
  # PUT /lectivos/1.json
  def update
    @lectivo = Lectivo.find(params[:id])

    respond_to do |format|
      if @lectivo.update_attributes(params[:lectivo])
        format.html { redirect_to @lectivo, notice: 'Lectivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lectivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lectivos/1
  # DELETE /lectivos/1.json
  def destroy
    @lectivo = Lectivo.find(params[:id])
    @lectivo.destroy

    respond_to do |format|
      format.html { redirect_to lectivos_url }
      format.json { head :no_content }
    end
  end
end

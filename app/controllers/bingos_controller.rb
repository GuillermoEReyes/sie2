class BingosController < ApplicationController
  # GET /bingos
  # GET /bingos.json
  def index
    @bingos = Bingo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bingos }
    end
  end

  # GET /bingos/1
  # GET /bingos/1.json
  def show
    @bingo = Bingo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bingo }
    end
  end

  # GET /bingos/new
  # GET /bingos/new.json
  def new
    @bingo = Bingo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bingo }
    end
  end

  # GET /bingos/1/edit
  def edit
    @bingo = Bingo.find(params[:id])
  end

  # POST /bingos
  # POST /bingos.json
  def create
    @bingo = Bingo.new(params[:bingo])

    respond_to do |format|
      if @bingo.save
        format.html { redirect_to @bingo, notice: 'Bingo was successfully created.' }
        format.json { render json: @bingo, status: :created, location: @bingo }
      else
        format.html { render action: "new" }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bingos/1
  # PUT /bingos/1.json
  def update
    @bingo = Bingo.find(params[:id])

    respond_to do |format|
      if @bingo.update_attributes(params[:bingo])
        format.html { redirect_to @bingo, notice: 'Bingo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bingo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bingos/1
  # DELETE /bingos/1.json
  def destroy
    @bingo = Bingo.find(params[:id])
    @bingo.destroy

    respond_to do |format|
      format.html { redirect_to bingos_url }
      format.json { head :no_content }
    end
  end
end

class GoconcertsController < ApplicationController
  # GET /goconcerts
  # GET /goconcerts.json
  def index
    @goconcerts = Goconcert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @goconcerts }
    end
  end

  # GET /goconcerts/1
  # GET /goconcerts/1.json
  def show
    @goconcert = Goconcert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @goconcert }
    end
  end

  # GET /goconcerts/new
  # GET /goconcerts/new.json
  def new
    @goconcert = Goconcert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @goconcert }
    end
  end

  # GET /goconcerts/1/edit
  def edit
    @goconcert = Goconcert.find(params[:id])
  end

  # POST /goconcerts
  # POST /goconcerts.json
  def create
    @goconcert = Goconcert.new(params[:goconcert])

    respond_to do |format|
      if @goconcert.save
        format.html { redirect_to @goconcert, notice: 'Goconcert was successfully created.' }
        format.json { render json: @goconcert, status: :created, location: @goconcert }
      else
        format.html { render action: "new" }
        format.json { render json: @goconcert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /goconcerts/1
  # PUT /goconcerts/1.json
  def update
    @goconcert = Goconcert.find(params[:id])

    respond_to do |format|
      if @goconcert.update_attributes(params[:goconcert])
        format.html { redirect_to @goconcert, notice: 'Goconcert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @goconcert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goconcerts/1
  # DELETE /goconcerts/1.json
  def destroy
    @goconcert = Goconcert.find(params[:id])
    @goconcert.destroy

    respond_to do |format|
      format.html { redirect_to goconcerts_url }
      format.json { head :no_content }
    end
  end
end

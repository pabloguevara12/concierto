class NameConcertsController < ApplicationController
  # GET /name_concerts
  # GET /name_concerts.json
  def index
    @name_concerts = NameConcert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @name_concerts }
    end
  end

  # GET /name_concerts/1
  # GET /name_concerts/1.json
  def show
    @name_concert = NameConcert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @name_concert }
    end
  end

  # GET /name_concerts/new
  # GET /name_concerts/new.json
  def new
    @name_concert = NameConcert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @name_concert }
    end
  end

  # GET /name_concerts/1/edit
  def edit
    @name_concert = NameConcert.find(params[:id])
  end

  # POST /name_concerts
  # POST /name_concerts.json
  def create
    @name_concert = NameConcert.new(params[:name_concert])

    respond_to do |format|
      if @name_concert.save
        format.html { redirect_to @name_concert, notice: 'Name concert was successfully created.' }
        format.json { render json: @name_concert, status: :created, location: @name_concert }
      else
        format.html { render action: "new" }
        format.json { render json: @name_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /name_concerts/1
  # PUT /name_concerts/1.json
  def update
    @name_concert = NameConcert.find(params[:id])

    respond_to do |format|
      if @name_concert.update_attributes(params[:name_concert])
        format.html { redirect_to @name_concert, notice: 'Name concert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @name_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /name_concerts/1
  # DELETE /name_concerts/1.json
  def destroy
    @name_concert = NameConcert.find(params[:id])
    @name_concert.destroy

    respond_to do |format|
      format.html { redirect_to name_concerts_url }
      format.json { head :no_content }
    end
  end
end

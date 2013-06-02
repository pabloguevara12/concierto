class UtypesController < ApplicationController
  # GET /utypes
  # GET /utypes.json
  def index
    @utypes = Utype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @utypes }
    end
  end

  # GET /utypes/1
  # GET /utypes/1.json
  def show
    @utype = Utype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @utype }
    end
  end

  # GET /utypes/new
  # GET /utypes/new.json
  def new
    @utype = Utype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @utype }
    end
  end

  # GET /utypes/1/edit
  def edit
    @utype = Utype.find(params[:id])
  end

  # POST /utypes
  # POST /utypes.json
  def create
    @utype = Utype.new(params[:utype])

    respond_to do |format|
      if @utype.save
        format.html { redirect_to @utype, notice: 'Tipo de usuarios fue creado correctamente.' }
        format.json { render json: @utype, status: :created, location: @utype }
      else
        format.html { render action: "new" }
        format.json { render json: @utype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /utypes/1
  # PUT /utypes/1.json
  def update
    @utype = Utype.find(params[:id])

    respond_to do |format|
      if @utype.update_attributes(params[:utype])
        format.html { redirect_to @utype, notice: 'Utype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @utype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utypes/1
  # DELETE /utypes/1.json
  def destroy
    @utype = Utype.find(params[:id])
    @utype.destroy

    respond_to do |format|
      format.html { redirect_to utypes_url }
      format.json { head :no_content }
    end
  end
end

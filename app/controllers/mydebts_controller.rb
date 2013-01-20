class MydebtsController < ApplicationController
  # GET /mydebts
  # GET /mydebts.json
  def index
    @mydebts = Mydebt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mydebts }
    end
  end

  # GET /mydebts/1
  # GET /mydebts/1.json
  def show
    @mydebt = Mydebt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mydebt }
    end
  end

  # GET /mydebts/new
  # GET /mydebts/new.json
  def new
    @mydebt = Mydebt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mydebt }
    end
  end

  # GET /mydebts/1/edit
  def edit
    @mydebt = Mydebt.find(params[:id])
  end

  # POST /mydebts
  # POST /mydebts.json
  def create
    @mydebt = Mydebt.new(params[:mydebt])

    respond_to do |format|
      if @mydebt.save
        format.html { redirect_to @mydebt, notice: 'Mydebt was successfully created.' }
        format.json { render json: @mydebt, status: :created, location: @mydebt }
      else
        format.html { render action: "new" }
        format.json { render json: @mydebt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mydebts/1
  # PUT /mydebts/1.json
  def update
    @mydebt = Mydebt.find(params[:id])

    respond_to do |format|
      if @mydebt.update_attributes(params[:mydebt])
        format.html { redirect_to @mydebt, notice: 'Mydebt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mydebt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydebts/1
  # DELETE /mydebts/1.json
  def destroy
    @mydebt = Mydebt.find(params[:id])
    @mydebt.destroy

    respond_to do |format|
      format.html { redirect_to mydebts_url }
      format.json { head :no_content }
    end
  end
end

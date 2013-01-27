class MybillsController < ApplicationController
  # GET /mybills
  # GET /mybills.json
  def index
    @mybills = Mybill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mybills }
    end
  end

  # GET /mybills/1
  # GET /mybills/1.json
  def show
    @mybill = Mybill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mybill }
    end
  end

  # GET /mybills/new
  # GET /mybills/new.json
  def new
    @mybill = Mybill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mybill }
    end
  end

  # GET /mybills/1/edit
  def edit
    @mybill = Mybill.find(params[:id])
  end

  # POST /mybills
  # POST /mybills.json
  def create
    @mybill = Mybill.new(params[:mybill].merge(:user_id => current_user.id))

    respond_to do |format|
      if @mybill.save
        format.html { redirect_to @mybill, notice: 'Mybill was successfully created.' }
        format.json { render json: @mybill, status: :created, location: @mybill }
      else
        format.html { render action: "new" }
        format.json { render json: @mybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mybills/1
  # PUT /mybills/1.json
  def update
    @mybill = Mybill.find(params[:id])

    respond_to do |format|
      if @mybill.update_attributes(params[:mybill])
        format.html { redirect_to @mybill, notice: 'Mybill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybills/1
  # DELETE /mybills/1.json
  def destroy
    @mybill = Mybill.find(params[:id])
    @mybill.destroy

    respond_to do |format|
      format.html { redirect_to mybills_url }
      format.json { head :no_content }
    end
  end
end

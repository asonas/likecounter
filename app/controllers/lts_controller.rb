class LtsController < ApplicationController
  # GET /lts
  # GET /lts.json
  def index
    @lts = Lt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lts }
    end
  end

  # GET /lts/1
  # GET /lts/1.json
  def show
    @lt = Lt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lt }
    end
  end

  # GET /lts/new
  # GET /lts/new.json
  def new
    @lt = Lt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lt }
    end
  end

  # GET /lts/1/edit
  def edit
    @lt = Lt.find(params[:id])
  end

  # POST /lts
  # POST /lts.json
  def create
    @lt = Lt.new(params[:lt])

    respond_to do |format|
      if @lt.save
        format.html { redirect_to @lt, notice: 'Lt was successfully created.' }
        format.json { render json: @lt, status: :created, location: @lt }
      else
        format.html { render action: "new" }
        format.json { render json: @lt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lts/1
  # PUT /lts/1.json
  def update
    @lt = Lt.find(params[:id])

    respond_to do |format|
      if @lt.update_attributes(params[:lt])
        format.html { redirect_to @lt, notice: 'Lt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lts/1
  # DELETE /lts/1.json
  def destroy
    @lt = Lt.find(params[:id])
    @lt.destroy

    respond_to do |format|
      format.html { redirect_to lts_url }
      format.json { head :no_content }
    end
  end
end

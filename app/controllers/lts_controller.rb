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
      format.xml { render xml: @lt, status: :created, location: @lt }
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

  def like
    Lt.update_counters params[:lt_id], :like_count => 1
    @lt = Lt.find(params[:lt_id])

    render xml: @lt, status: :created, location: @lt
  end

  def unlike
    Lt.update_counters params[:lt_id], :like_count => -1
    @lt = Lt.find(params[:lt_id])

    render xml: @lt, status: :created, location: @lt
  end

end

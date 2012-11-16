class SomethingsController < ApplicationController
  # GET /somethings
  # GET /somethings.json
  def index
    @somethings = Something.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @somethings }
    end
  end

  # GET /somethings/1
  # GET /somethings/1.json
  def show
    @something = Something.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @something }
    end
  end

  # GET /somethings/new
  # GET /somethings/new.json
  def new
    @something = Something.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @something }
    end
  end

  # GET /somethings/1/edit
  def edit
    @something = Something.find(params[:id])
  end

  # POST /somethings
  # POST /somethings.json
  def create
    @something = Something.new(params[:something])

    respond_to do |format|
      if @something.save
        format.html { redirect_to @something, notice: 'Something was successfully created.' }
        format.json { render json: @something, status: :created, location: @something }
      else
        format.html { render action: "new" }
        format.json { render json: @something.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /somethings/1
  # PUT /somethings/1.json
  def update
    @something = Something.find(params[:id])

    respond_to do |format|
      if @something.update_attributes(params[:something])
        format.html { redirect_to @something, notice: 'Something was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @something.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /somethings/1
  # DELETE /somethings/1.json
  def destroy
    @something = Something.find(params[:id])
    @something.destroy

    respond_to do |format|
      format.html { redirect_to somethings_url }
      format.json { head :no_content }
    end
  end
end

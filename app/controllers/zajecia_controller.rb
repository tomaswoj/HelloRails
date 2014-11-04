class ZajeciaController < ApplicationController
  # GET /zajecia
  # GET /zajecia.json
  def index
    @zajecia = Zajecium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zajecia }
    end
  end

  # GET /zajecia/1
  # GET /zajecia/1.json
  def show
    @zajecium = Zajecium.find(params[:id])
    @zadania = @zajecium.zadaniums

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zajecium }
    end
  end

  # GET /zajecia/new
  # GET /zajecia/new.json
  def new
    @zajecium = Zajecium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zajecium }
    end
  end

  # GET /zajecia/1/edit
  def edit
    @zajecium = Zajecium.find(params[:id])
  end

  # POST /zajecia
  # POST /zajecia.json
  def create
    @zajecium = Zajecium.new(params[:zajecium])

    respond_to do |format|
      if @zajecium.save
        format.html { redirect_to @zajecium, notice: 'Zajecium was successfully created.' }
        format.json { render json: @zajecium, status: :created, location: @zajecium }
      else
        format.html { render action: "new" }
        format.json { render json: @zajecium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zajecia/1
  # PUT /zajecia/1.json
  def update
    @zajecium = Zajecium.find(params[:id])

    respond_to do |format|
      if @zajecium.update_attributes(params[:zajecium])
        format.html { redirect_to @zajecium, notice: 'Zajecium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zajecium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zajecia/1
  # DELETE /zajecia/1.json
  def destroy
    @zajecium = Zajecium.find(params[:id])
    @zajecium.destroy

    respond_to do |format|
      format.html { redirect_to zajecia_url }
      format.json { head :no_content }
    end
  end
end

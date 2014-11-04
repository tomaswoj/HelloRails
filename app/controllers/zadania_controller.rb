class ZadaniaController < ApplicationController
  # GET /zadania
  # GET /zadania.json
  def index
    @zadania = Zadanium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zadania }
    end
  end

  # GET /zadania/1
  # GET /zadania/1.json
  def show
    @zadanium = Zadanium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zadanium }
    end
  end

  # GET /zadania/new
  # GET /zadania/new.json
  def new
    @zadanium = Zadanium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zadanium }
    end
  end

  # GET /zadania/1/edit
  def edit
    @zadanium = Zadanium.find(params[:id])
  end

  # POST /zadania
  # POST /zadania.json
  def create
    @zadanium = Zadanium.new(params[:zadanium])

    respond_to do |format|
      if @zadanium.save
        format.html { redirect_to @zadanium, notice: 'Zadanium was successfully created.' }
        format.json { render json: @zadanium, status: :created, location: @zadanium }
      else
        format.html { render action: "new" }
        format.json { render json: @zadanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zadania/1
  # PUT /zadania/1.json
  def update
    @zadanium = Zadanium.find(params[:id])

    respond_to do |format|
      if @zadanium.update_attributes(params[:zadanium])
        format.html { redirect_to @zadanium, notice: 'Zadanium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zadanium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zadania/1
  # DELETE /zadania/1.json
  def destroy
    @zadanium = Zadanium.find(params[:id])
    @zadanium.destroy

    respond_to do |format|
      format.html { redirect_to zadania_url }
      format.json { head :no_content }
    end
  end
end

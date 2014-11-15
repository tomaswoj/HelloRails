class CarInfosController < ApplicationController
  # GET /cars
  # GET /cars.json
  def index
    @carinfos = CarInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carinfos }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @carinfo = CarInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carinfo }
    end
  end

end

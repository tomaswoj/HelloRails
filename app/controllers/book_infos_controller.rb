class BookInfosController < ApplicationController
  # GET /book_info..
  # GET /cars.json
  def index
    @bookinfos = BookInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bookinfos }
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @bookinfo = BookInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bookinfos }
    end
  end

end

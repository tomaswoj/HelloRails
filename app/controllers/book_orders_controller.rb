class BookOrdersController < ApplicationController
  # GET /book_orders
  # GET /book_orders.json
  def index
    @book_orders = BookOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_orders }
    end
  end

  # GET /book_orders/1
  # GET /book_orders/1.json
  def show
    @book_order = BookOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_order }
    end
  end

  # GET /book_orders/new
  # GET /book_orders/new.json
  def new
    @book_order = BookOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_order }
    end
  end

  # GET /book_orders/1/edit
  def edit
    @book_order = BookOrder.find(params[:id])
  end

  # POST /book_orders
  # POST /book_orders.json
  def create
    @book_order = BookOrder.new(params[:book_order])

    respond_to do |format|
      if @book_order.save
        format.html { redirect_to @book_order, notice: 'Book order was successfully created.' }
        format.json { render json: @book_order, status: :created, location: @book_order }
      else
        format.html { render action: "new" }
        format.json { render json: @book_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_orders/1
  # PUT /book_orders/1.json
  def update
    @book_order = BookOrder.find(params[:id])

    respond_to do |format|
      if @book_order.update_attributes(params[:book_order])
        format.html { redirect_to @book_order, notice: 'Book order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_orders/1
  # DELETE /book_orders/1.json
  def destroy
    @book_order = BookOrder.find(params[:id])
    @book_order.destroy

    respond_to do |format|
      format.html { redirect_to book_orders_url }
      format.json { head :no_content }
    end
  end
end

class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @product = Product.find(order_params[:product_id])
    amount_order = @product.price.to_i * @product.quantity_asked.to_i
    @order = Order.create!(product_id: order_params[:product_id], amount: amount_order, status: 'pending', first_name: order_params[:first_name], last_name: order_params[:last_name], email: order_params[:email], phone_number: order_params[:phone_number], address: order_params[:address], code_postal: order_params[:code_postal], city: order_params[:city])

    respond_to do |format|
      @order.save
      format.html { redirect_to new_order_payment_path(@order) }
      format.json { redirect_to new_order_payment_path(@order), status: 'pending', location: @order }
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      @order.update(order_params)
      format.html { redirect_to orders_path, notice: 'Order was successfully updated.' }
      format.json { redirect_to orders_path, status: :ok, location: @order }
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit(:first_name, :last_name, :email, :phone_number, :address, :code_postal, :city, :product_id, :status, :amount_cents, :payment)
  end
end

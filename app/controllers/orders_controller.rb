class OrdersController < ApplicationController
  before_action :set_order, only: %i[show destroy]

  def index
    @orders = Order.all
    # TODO : filtrer par user
  end

  def new
    @order = Order.new
  end

  def show
  end

  def create
    @order = orders.new(order_params)
    @order.book = Book.find(params[:book_id])
    @order.user = current_user
    # TODO : vérifier que ça marche
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:orders).permit(:status)
  end

  def set_order
    @order = order.find(params[:id])
  end
end

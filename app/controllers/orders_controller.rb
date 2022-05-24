class OrdersController < ApplicationController
  before_action :set_order, only: %i[destroy]

  def new
    @order = Order.new
    @book = Book.find(params[:book_id])
  end

  def create
    @order = Order.new(order_params)
    @order.book = Book.find(params[:book_id])
    @order.user = current_user
    # TODO : vérifier que ça marche
    if @order.save
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:status, :message, :starting_date, :ending_date)
  end

  def set_order
    @order = order.find(params[:id])
  end
end

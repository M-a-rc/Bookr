class UsersController < ApplicationController
  def profile_page
    @books = Book.where(user_id: current_user)
    @orders = Order.all.select { |order| order.book.user == current_user }
    @rentals = Order.where(user_id: current_user)
  end
end

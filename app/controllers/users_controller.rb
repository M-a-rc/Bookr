class UsersController < ApplicationController
  def profile_page
    @orders = Order.where(user_id: current_user)
    @books = Book.where(user_id: current_user)
  end
end

class PagesController < ApplicationController
  def home
    @books = Book.last(4)
    @users = User.all
  end
end

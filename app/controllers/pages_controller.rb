class PagesController < ApplicationController
  def home
    @books = Book.last(6)
    @users = User.all
  end
end

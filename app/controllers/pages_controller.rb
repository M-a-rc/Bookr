class PagesController < ApplicationController
  def home
    @books = Book.all
    @users = User.all
  end
end

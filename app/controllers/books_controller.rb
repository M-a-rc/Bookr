class BooksController < ApplicationController
  require "json"
  require "open-uri"

  before_action :set_book, only: %i[show edit update destroy]
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    my_hash = book_params.merge(gBooksApi(book_params[:title]))
    @book = current_user.books.new(my_hash)
    if @book.save
      redirect_to book_path(@book)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :address, :price)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def gBooksApi(title)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{title}"
    parse_serialized = URI.open(url).read
    parse = JSON.parse(parse_serialized)
    {
      overview: parse["items"][0]["volumeInfo"]["description"],
      publishing_date: (parse["items"][0]["volumeInfo"]["publishedDate"].length == 7 ? "#{parse['items'][0]['volumeInfo']['publishedDate']}-02" : parse["items"][0]["volumeInfo"]["publishedDate"] ),
      image_url: (parse["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"].nil? ? "https://images.unsplash.com/photo-1610116306796-6fea9f4fae38?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770" : parse["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]),
      category: (parse["items"][0]["volumeInfo"]["categories"].nil? ? "N/a" : parse["items"][0]["volumeInfo"]["categories"].first)
    }
  end
end

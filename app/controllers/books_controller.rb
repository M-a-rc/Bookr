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
    my_hash = book_params.merge(scrapper(book_params[:title]))
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
    params.require(:book).permit(:title, :author, :address)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def scrapper(title)
    url = "https://www.googleapis.com/books/v1/volumes?q=#{title}"
    parse_serialized = URI.open(url).read
    parse = JSON.parse(parse_serialized)
    {
      overview: parse["items"][1]["volumeInfo"]["description"],
      publishing_date: (parse["items"][1]["volumeInfo"]["publishedDate"].length == 7 ? "#{parse['items'][1]['volumeInfo']['publishedDate']}-02" : parse["items"][1]["volumeInfo"]["publishedDate"] ),
      image_url: parse["items"][1]["volumeInfo"]["imageLinks"]["thumbnail"],
      category: (parse["items"][1]["volumeInfo"]["categories"].nil? ? "N/a" : parse["items"][1]["volumeInfo"]["categories"].first)
    }
  end
end

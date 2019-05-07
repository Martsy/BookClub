class BooksController < ApplicationController

  def index
    @books = Book.order_by(params[:order])
    @highest_rated_books = Book.highest_rated_books
    @lowest_rated_books = Book.lowest_rated_books
    @users_most_reviews = User.most_reviews
  end

  def show
    @book = Book.find(params[:id])
    @top_3_reviews = @book.top_3_reviews
    @bottom_3_reviews = @book.bottom_3_reviews
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.authors = @authors
    @book.save
    redirect_to book_path(@book)
    # redirect_to "/books/#{book.id}"
  end

  private

  def book_params
    params.require(:book).permit(:title, :authors, :pages, :year_published, :book_cover)
  end
end

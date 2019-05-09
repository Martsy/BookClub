class BooksController < ApplicationController

  def index
    @books = Book.order_by(params[:order])
    @highest_rated_books = Book.highest_rated_books
    @lowest_rated_books = Book.lowest_rated_books
    @users_most_reviews = User.most_reviews
  end
end

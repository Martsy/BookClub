class BooksController < ApplicationController

  def index
    @books = Book.order_by(params[:order])
  end
end

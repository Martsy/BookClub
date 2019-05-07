class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
    @book = Book.find(params[:id])
  end

  def create
    book = Book.find(params[:id])
    author = book.authors.create(author_params)
    redirect_to author_path(author)
  end

  private

  def author_params
    params.require(:author).permit(:name)
  end
end

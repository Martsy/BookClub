class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    @books = @author.books
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to books_path
  end
end

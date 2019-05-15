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
    @book = add_authors_to_book
    @book.save ? (redirect_to book_path(Book.last)) : (redirect_to new_book_path)
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end

  private

  def book_params
    bp = params.require(:book).permit(:title, :pages, :year_published, :book_cover)
    bp[:title].downcase.titleize
    bp
  end

  def add_authors_to_book
    book = Book.new(book_params)
    author_names = params[:book][:authors].strip.upcase.titleize.split(', ')
    author_names.each { |name| book.authors << Author.find_or_create_by(name: name) }
    book
  end
end

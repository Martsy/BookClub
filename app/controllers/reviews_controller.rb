class ReviewsController < ApplicationController
  def destroy
    Review.destroy(params[:id])
    redirect_to user_path(params[:user_id])
  end

  def new
    @book = Book.find params[:book_id]
    @review = Review.new
  end

  def create

    @book= Book.find params[:book_id]
    user_name = params[:review][:user].downcase.strip.titleize

    user = User.find_or_create_by(name: user_name)

    review = Review.new(review_params)
    review.user = user
    review.book = @book

    if !review.save
      redirect_to new_book_review_path(@book) unless review.save
    else
      redirect_to book_path params[:book_id]
    end
  end


  private

  def review_params
    params.require(:review).permit(:headline, :text, :rating)
  end
end

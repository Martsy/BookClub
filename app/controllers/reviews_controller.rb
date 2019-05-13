class ReviewsController < ApplicationController
  def destroy
    Review.destroy(params[:id])
    redirect_to user_path(params[:user_id])
  end
end

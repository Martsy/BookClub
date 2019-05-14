class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @reviews = params[:order] ? @user.reviews_desc : @user.reviews
  end

  def delete
binding.pry
  end
end

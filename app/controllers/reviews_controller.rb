class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review = Item.find(params[:item_id])
    @review = User.find(params[:user_id])

  end

  def destroy
  end
end

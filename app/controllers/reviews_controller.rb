class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user

    if params[:item_id]
      @item = Item.find(params[:item_id])
      @review.reviewable = @item

    elsif params[:user_id]
      @user = User.find(params[:user_id])
      @review.reviewable = @user
    end

    if @review.save
      # Success scenario
      redirect_to root_path
    else
    end

  end

  private

  # USER_ID > Coming from the URL /users/:user_id/reviews
  # ITEM_ID > Coming from the URL /items/:item_id/reviews
  def review_params
    params.require(:review).permit(:rating, :text)
  end
end


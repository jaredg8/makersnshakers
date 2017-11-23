class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @transaction = Transaction.find(params[:transaction_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user

    if params[:transaction_id]
      @transaction = Transaction.find(params[:transaction_id])
      @review.reviewable = @transaction

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
  # transaction_id > Coming from the URL /items/:item_id/reviews
  def review_params
    params.require(:review).permit(:rating, :text)
  end
end


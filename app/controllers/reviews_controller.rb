class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @transaction = Transaction.find(params[:transaction_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
      @transaction = Transaction.find(params[:transaction_id])
      @review.reviewable = @transaction

    if @review.save
      respond_to do |format|
        format.html {redirect_to items_path}
        format.js
      end
      # Success scenario
    else
      respond_to do |format|
        format.html {'items/show'}
        format.js
      end
    end
  end
  private

  # USER_ID > Coming from the URL /users/:user_id/reviews
  # transaction_id > Coming from the URL /items/:item_id/reviews
  def review_params
    params.require(:review).permit(:rating, :text, :item_rating, :item_text)
  end
end


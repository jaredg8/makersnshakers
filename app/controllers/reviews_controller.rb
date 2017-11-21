class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]

  def show
    @item = Item.find(params[:id])
    @user = User.find(params[:id])

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review = Item.find(params[:item_id])
    @review = User.find(params[:user_id])
    if review.save
      redirect_to item_path(@item)
    else
      @items = Item.all?
      render 'items/show'
    end
  end


  def destroy
    @item = @review.item
    @review.destroy
    redirect_to item_path(@item)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :text, :user_id)

end

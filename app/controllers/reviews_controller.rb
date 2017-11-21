class ReviewsController < ApplicationController
  before_action :set_user, :set_item, only: [:show, :destroy]

  def show
    @item = Item.find(params[:id])
    @user = User.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @user.reviews.build(review_params)
    @item.reviews.build(review_params)

    if params[:item_id]
      @review.object_type = @item
      @review.object_id = @item.id
      @review.transaction.user_id = current_user
      @item.save!
    elsif params[:user_id]
      @review.object_type = @user
      @reivew.object_id = @user.item_id
      @review.transaction.user_id = current_user
      @user.save!
    end
    if review.save
      redirect_to item_path(@item)
    else
      @items = Item.all
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

  def set_item
    @item = Item.find(params[:item_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:rating, :text, :user_id, :item_id)
  end

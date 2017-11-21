class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]

  def index
    @items = Item.all
  end
  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to @item
  end

  def destroy
    @item.destroy
    redirect_to root_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
  params.require(:item).permit(:name, :description, :price, :category, photos: [])
  end
end

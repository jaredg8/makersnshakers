class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]

#within index add conditionals for search
def index
  # @items = Item.all
  @items = Item.where(name: params[:search][:name])
end

def show
end

def new
  @item = Item.new
end

def create
  @item = Item.new(item_params)
  @item.user_id = current_user
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

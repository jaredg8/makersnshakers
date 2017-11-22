class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :update, :destroy, :show]

  def index
    @items = Item.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@items) do |item, marker|
      marker.lat item.latitude
      marker.lng item.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

    @items = @items.where(name: params[:search][:name]) if params[:search]
  end

  def show
  end

  def new
    @item = Item.new
  end

def create
  @item = Item.new(item_params)
  @item.user = current_user
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

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  private
  def Item_params
    params.require(:Item).permit(:id, :name, :item_description, :image_tag)
  end
end

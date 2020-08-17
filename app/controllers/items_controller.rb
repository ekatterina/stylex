class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def show
    @items = Item.all
  end

  private

  def item_params
    params.require(:item).permit(:name, :this)
  end
end

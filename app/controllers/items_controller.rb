class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item).order(created_at: :desc)
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.save!
    authorize @item
    redirect_to item_path(@item)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:title, :size, :color, :price, :description, :category, :pickup_location)
  end
end

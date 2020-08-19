class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item).order(created_at: :desc).geocoded
    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { item: item })
      }
    end
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
    authorize @item

  end

  def show
    @booking = Booking.new
    @item = Item.find(params[:id])
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:title, :color, :size, :price, :description, :category, :pickup_location, :style_photo, individual_pieces: [])
  end
end

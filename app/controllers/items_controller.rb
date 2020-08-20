class ItemsController < ApplicationController
  def index
      @items = policy_scope(Item).order(created_at: :desc)
      # @items = policy_scope(Item).where("pickup_location ILIKE ?", "%#{params[:pickup_location]}%").order(created_at: :desc) if params[:pickup_location].present?
      # @items = policy_scope(Item).where(start_date, params[:start_date]).order(created_at: :desc).geocoded if params[:start_date].present?
      # @items = policy_scope(Item).where(end_date, params[:end_date]).order(created_at: :desc).geocoded if params[:end_date].present?
      @items = policy_scope(Item).where(size, params[:size]}).order(created_at: :desc).geocoded if params[:size].present?

      @items.geocoded

    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { item: item })
      }
    end
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

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
    authorize @item
  end

  private

  def item_params
    params.require(:item).permit(:title, :color, :size, :price, :description, :category, :pickup_location, :style_photo, individual_pieces: [])
  end
end

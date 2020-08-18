class BookingsController < ApplicationController
  before_action :find_item, only: [:new, :create]
  
  def index
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.item = @item
    @booking.save!
    authorize @booking
    redirect_to booking_path(@booking)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end

  def find_item
    @item = Item.find(params[:item_id])
  end
end

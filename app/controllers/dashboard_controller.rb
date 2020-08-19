class DashboardController < ApplicationController
  def show
    @items = Item.all
    @bookings = Booking.all
    authorize @items
    authorize @bookings
    @user = current_user
  end
end

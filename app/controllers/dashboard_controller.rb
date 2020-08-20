class DashboardController < ApplicationController
  def show
    @user = current_user
    @items = Item.where(user_id: current_user.id)

    bookings = Booking.where(user_id: current_user.id)
    @borrowed_items = bookings.map do |booking|
      booking.item
    end
    authorize @items
  end
end

# to fix pundit for this page
# refactor line 7

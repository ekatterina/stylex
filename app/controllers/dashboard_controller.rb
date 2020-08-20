class DashboardController < ApplicationController
  def show
    @user = current_user
    @items = Item.where(user_id: current_user.id)

    bookings = Booking.where(user_id: current_user.id)
    @borrowed_items = bookings.map do |booking|
      booking.item
    end
    authorize @items
    # authorize @borrowed_items

    # @user = current_user
    # @booking = Booking.where(user_id: current_user.id)
    # # thing = @booking.class_variable_get(:user_id)

    # # item_book = Booking.where(user_id: current_user.id)
    # # @bookings = Item.where(item_id: item_book.class_variable_get(:item_id))
    # authorize @items
    # authorize @booking
  end
end

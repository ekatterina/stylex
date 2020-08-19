class DashboardController < ApplicationController
  def show
    @items = Item.all
    authorize @items
  end
end

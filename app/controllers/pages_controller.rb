class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  # def search
  #   items = Item.where()
  # end
end

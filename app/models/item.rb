class Item < ApplicationRecord
  belongs_to :user
  # belongs_to :variable
  has_many_attached :individual_pieces
  has_one_attached :style_photo

  validates :title, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :pickup_location, presence: true
end

class Item < ApplicationRecord
  belongs_to :user

  geocoded_by :pickup_location
  after_validation :geocode, if: :will_save_change_to_pickup_location?

  has_many_attached :individual_pieces
  has_one_attached :style_photo

  validates :title, presence: true
  validates :style_photo, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :pickup_location, presence: true
  validates :individual_pieces, length: {minimum: 1}
end

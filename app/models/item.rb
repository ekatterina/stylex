class Item < ApplicationRecord
  belongs_to :user
  # belongs_to :variable
  has_one_attached :photo
  geocoded_by :pickup_location
  after_validation :geocode, if: :will_save_change_to_pickup_location?

  validates :title, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :pickup_location, presence: true
end

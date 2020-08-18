class Item < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :price, presence: true
  validates :size, presence: true
  validates :pickup_location, presence: true
end

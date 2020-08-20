class User < ApplicationRecord
  has_many :items
  has_many :bookings
  has_many :items, through: :bookings

  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validations
  validates :first_name, presence: true
  validates :last_name, presence: true
end

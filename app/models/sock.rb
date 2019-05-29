class Sock < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :title, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
end

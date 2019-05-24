class Sock < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
end

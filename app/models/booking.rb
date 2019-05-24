class Booking < ApplicationRecord
  belongs_to :sock
  belongs_to :user
  belongs_to :booker
  has_many :reviews, dependent: :destroy
end

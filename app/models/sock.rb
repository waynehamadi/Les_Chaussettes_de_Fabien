class Sock < ApplicationRecord
  include PgSearch
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :title, presence: true
  validates :price, presence: true
  validates :photo, presence: true
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  # <-- PG Search start


  pg_search_scope :search,
    against: [ :title, :color ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  # <-- PG Search end

end

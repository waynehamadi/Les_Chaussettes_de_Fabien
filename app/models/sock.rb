class Sock < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :title, presence: true
  has_many :reviews, dependent: :destroy
end

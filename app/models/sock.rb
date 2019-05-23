class Sock < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  has_many :reviews, dependent: :destroy
end

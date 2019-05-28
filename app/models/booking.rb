class Booking < ApplicationRecord
  belongs_to :sock
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :start_at, presence: true
  validates :end_at, presence: true
  # validate :start_at_cannot_be_in_the_past
  # validate :end_at_cannot_be_before_start

  def start_at_cannot_be_in_the_past
    if self.start_at < Date.today
      errors.add(:start_at, "can't be in the past")
    end
  end

  def end_at_cannot_be_before_start
    if self.end_at < self.start_at
      errors.add(:end_at, "can't be before start date")
    end
  end
end

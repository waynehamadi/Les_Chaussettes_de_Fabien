class Booking < ApplicationRecord
  belongs_to :sock
  belongs_to :user
end

class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :terrace
  validates :booking_start_date, presence: true
  validates :booking_end_date, presence: true
end

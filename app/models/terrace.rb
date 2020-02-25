class Terrace < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :price, presence: true
  has_many :bookings

end

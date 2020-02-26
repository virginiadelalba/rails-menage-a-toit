class Terrace < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true, uniqueness: true
  validates :capacity, presence: true
  validates :price, presence: true
  has_many_attached :photos
  validates :photos, presence: true
end

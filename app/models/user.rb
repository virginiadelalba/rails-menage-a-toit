class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :terraces
<<<<<<< HEAD
=======
  has_many :bookings
>>>>>>> 63a59f815bd22f6f3db5d8ead62b6d966a2db9f5
end

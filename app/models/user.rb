class User < ApplicationRecord
  has_many :bags
  has_many :bookings
  has_many :reviews

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :rating, presence: true, numericality: { only_decimal: true }
  validates :rating, presence: true, numericality: { }
end

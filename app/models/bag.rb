class Bag < ApplicationRecord
  belongs_to :user_id
  has_many :reviews
  has_many :bookings
end

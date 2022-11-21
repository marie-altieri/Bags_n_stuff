class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :bag_id
end

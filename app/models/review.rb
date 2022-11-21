class Review < ApplicationRecord
  belongs_to :bag_id
  belongs_to :user_id
end

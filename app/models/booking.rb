class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bag

  def extra?
    extras_with_price.any?
  end

  def extras_with_price
    # response = []
    # response << :cancellation_guarantee if cancellation_guarantee
    # response << :damage_guarantee if damage_guarantee
    # response << :personnalized_shipping if personnalized_shipping
    # response

    response = {}
    response[:cancellation_guarantee] = 3 if cancellation_guarantee
    response[:damage_guarantee] = 35 if damage_guarantee
    response[:personnalized_shipping] = 9 if personnalized_shipping

    response
  end

  def full_price
    price_days = bag.price * (end_date - start_date).to_i
    extras_with_price.each do |extra, price|
      price_days += price
    end
    price_days
  end
end

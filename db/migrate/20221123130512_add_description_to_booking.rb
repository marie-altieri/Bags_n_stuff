class AddDescriptionToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :cancellation_guarantee, :boolean
    add_column :bookings, :damage_guarantee, :boolean
    add_column :bookings, :personnalized_shipping, :boolean
  end
end

class AddPriceToBags < ActiveRecord::Migration[7.0]
  def change
    add_column :bags, :price, :integer
  end
end

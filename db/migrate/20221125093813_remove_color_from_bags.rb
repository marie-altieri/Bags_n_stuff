class RemoveColorFromBags < ActiveRecord::Migration[7.0]
  def change
    remove_column :bags, :color, :string
  end
end

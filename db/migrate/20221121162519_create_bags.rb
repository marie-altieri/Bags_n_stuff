class CreateBags < ActiveRecord::Migration[7.0]
  def change
    create_table :bags do |t|
      t.string :category
      t.string :color
      t.string :brand
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

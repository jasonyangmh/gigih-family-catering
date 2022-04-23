class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :price
      t.integer :quantity
      t.float :sub_total

      t.timestamps
    end
  end
end

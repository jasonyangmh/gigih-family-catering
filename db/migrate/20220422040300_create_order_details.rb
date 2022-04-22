class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :Order, null: false, foreign_key: true
      t.references :Food, null: false, foreign_key: true
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :email
      t.string :status, default: "NEW"
      t.float :total_price

      t.timestamps
    end
  end
end

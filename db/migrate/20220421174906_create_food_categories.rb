class CreateFoodCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :food_categories do |t|
      t.references :Food, null: false, foreign_key: true
      t.references :Category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

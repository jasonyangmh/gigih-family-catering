class AddDescriptionToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :description, :text
  end
end

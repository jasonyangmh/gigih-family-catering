class FoodCategory < ApplicationRecord
  belongs_to :Food
  belongs_to :Category
end

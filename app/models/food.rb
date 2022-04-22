class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :description, length: { maximum: 150 }
  has_many :FoodCategories
  has_many :Categories, through: :FoodCategories
  has_many :OrderDetails
end

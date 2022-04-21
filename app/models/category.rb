class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :FoodCategories
  has_many :Foods, through: :FoodCategories
end

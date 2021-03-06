class Food < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :description, length: { maximum: 150 }
  has_many :food_categories, dependent: :destroy
  has_many :categories, through: :food_categories
  has_many :order_details
end

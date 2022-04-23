class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :food
  before_save :set_price, :set_sub_total
	
	def set_price
		self.price = self.food.price
	end

	def set_sub_total
		self.sub_total = self.price * self.quantity
	end
end

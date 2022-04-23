class Order < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :order_details, dependent: :destroy
  
  def order_details_attributes=(order_details_attributes)
    order_details_attributes.each do |i, order_detail_attributes|
      self.order_details.build(order_detail_attributes)
    end
  end

  def total_price
    self.total_price = self.order_details.map { |order_detail| order_detail.sub_total }.sum
  end
end

class Order < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :order_details, dependent: :destroy
  before_save :set_total_price
  
  def order_details_attributes=(order_details_attributes)
    order_details_attributes.each do |i, order_detail_attributes|
      self.order_details.build(order_detail_attributes)
    end
  end

  def set_total_price
    self.total_price = OrderDetail.find_by(order_id: self.id).sub_total
	end
end

class Order < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  has_many :order_details, dependent: :destroy
  
  def order_details_attributes=(order_details_attributes)
    order_details_attributes.each do |i, order_detail_attributes|
      self.order_details.build(order_detail_attributes)
    end
  end
end

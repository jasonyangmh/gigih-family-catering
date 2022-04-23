class Order < ApplicationRecord
  validates :email, presence: true
  has_many :OrderDetails
end

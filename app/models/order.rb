class Order < ApplicationRecord
  belongs_to :Customer
  has_many :OrderDetails
end

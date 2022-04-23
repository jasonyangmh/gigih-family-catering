class Order < ApplicationRecord
  has_many :OrderDetails
end

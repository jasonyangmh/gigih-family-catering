FactoryBot.define do
  factory :order_detail do
    Order { nil }
    Food { nil }
    quantity { 1 }
    price { 1.5 }
  end
end

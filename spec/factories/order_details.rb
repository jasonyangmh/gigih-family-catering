FactoryBot.define do
  factory :order_detail do
    order { nil }
    food { nil }
    price { 1.5 }
    quantity { 1 }
    sub_total { 1.5 }
  end
end

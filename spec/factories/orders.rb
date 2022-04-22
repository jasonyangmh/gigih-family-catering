FactoryBot.define do
  factory :order do
    status { "MyString" }
    total_price { 1.5 }
    Customer { nil }
  end
end

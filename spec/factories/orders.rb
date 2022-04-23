FactoryBot.define do
  factory :order do
    email { Faker::Internet.email }
    status { "new" }
    total_price { 25000.0 }
  end
end

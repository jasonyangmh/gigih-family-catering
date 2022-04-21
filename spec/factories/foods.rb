FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    price { 25000.0 }
  end
end

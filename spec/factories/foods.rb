FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    price { 25000.0 }
  end

  factory :food_with_description, parent: :food do
    name { Faker::Food.dish }
    price { 25000.0 }
    description { "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m" }
  end
end

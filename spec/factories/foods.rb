FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    price { 25000.0 }
  end

  factory :invalid_food, parent: :food do
    name { nil }
    price { 25000.0 }
    description { nil }
  end

  factory :food_with_description, parent: :food do
    name { Faker::Food.dish }
    price { 25000.0 }
    description { "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m" }
  end

  factory :food_with_invalid_description, parent: :food do
    name { Faker::Food.dish }
    price { 25000.0 }
    description { "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa" }
  end
end

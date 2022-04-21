require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:food)).to be_valid
  end

  it 'is valid with a name and a price' do
    expect(FactoryBot.build(:food)).to be_valid
  end

  it 'is invalid without a name' do
    food = FactoryBot.build(:food, name: nil)
    food.valid?
    expect(food.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a price' do
    food = FactoryBot.build(:food, price: nil)
    food.valid?
    expect(food.errors[:price]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    food1 = FactoryBot.create(:food, name: 'Fried Rice')
    food2 = FactoryBot.build(:food, name: 'Fried Rice')
    food2.valid?
    expect(food2.errors[:name]).to include("has already been taken")
  end

  it 'is invalid with a non numeric price' do
    food = FactoryBot.build(:food, price: 'Fried Rice')
    food.valid?
    expect(food.errors[:price]).to include("is not a number")
  end

  it 'is invalid with a price less than 0.01' do
    food = FactoryBot.build(:food, price: 0.009)
    food.valid?
    expect(food.errors[:price]).to include("must be greater than or equal to 0.01")
  end
end

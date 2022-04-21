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
end

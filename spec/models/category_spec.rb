require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is valid with a name' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is invalid without a name' do
    category = FactoryBot.build(:category, name: nil)
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end

  it "is invalid with a duplicate name" do
    category1 = FactoryBot.create(:category, name: 'Indonesian cuisine')
    category2 = FactoryBot.build(:category, name: 'Indonesian cuisine')
    category2.valid?
    expect(category2.errors[:name]).to include("has already been taken")
  end

  it 'is invalid without has_many association to food_categories' do
    expect(Category.reflect_on_association(:food_categories).macro).to eq(:has_many)
  end

  it 'is invalid without has_many association to foods' do
    expect(Category.reflect_on_association(:foods).macro).to eq(:has_many)
  end
end

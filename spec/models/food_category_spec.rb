require 'rails_helper'

RSpec.describe FoodCategory, type: :model do
  it 'is invalid without belongs_to association to food' do
    expect(FoodCategory.reflect_on_association(:food).macro).to eq(:belongs_to)
  end

  it 'is invalid without belongs_to association to category' do
    expect(FoodCategory.reflect_on_association(:category).macro).to eq(:belongs_to)
  end
end

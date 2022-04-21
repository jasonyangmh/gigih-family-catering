require 'rails_helper'

RSpec.describe FoodCategory, type: :model do
  it 'is invalid without belongs_to association to Food' do
    expect(FoodCategory.reflect_on_association(:Food).macro).to eq(:belongs_to)
  end

  it 'is invalid without belongs_to association to Category' do
    expect(FoodCategory.reflect_on_association(:Category).macro).to eq(:belongs_to)
  end
end

require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is invalid without has_many association to OrderDetails' do
    expect(Order.reflect_on_association(:OrderDetails).macro).to eq(:has_many)
  end
end

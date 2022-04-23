require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is valid with an email, a status, and a price' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is invalid without an email' do
    order = FactoryBot.build(:order, email: nil)
    order.valid?
    expect(order.errors[:email]).to include("can't be blank")
  end

  it 'is invalid with an invalid email' do
		order = FactoryBot.build(:order, email: "halogigih")
		order.valid?
		expect(order.errors[:email]).to include("is invalid")
	end

  it 'is invalid without has_many association to OrderDetails' do
    expect(Order.reflect_on_association(:OrderDetails).macro).to eq(:has_many)
  end
end

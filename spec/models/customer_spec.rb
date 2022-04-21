require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is valid with an email' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it "is invalid without an email" do
    customer = FactoryBot.build(:customer, email: nil)
    customer.valid?
    expect(customer.errors[:email]).to include("can't be blank")
  end
end

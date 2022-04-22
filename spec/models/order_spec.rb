require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'is invalid without belongs_to association to Customer' do
    expect(Order.reflect_on_association(:Customer).macro).to eq(:belongs_to)
  end
end

require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it 'is invalid without belongs_to association to Order' do
    expect(OrderDetail.reflect_on_association(:Order).macro).to eq(:belongs_to)
  end

  it 'is invalid without belongs_to association to Food' do
    expect(OrderDetail.reflect_on_association(:Food).macro).to eq(:belongs_to)
  end
end

require 'rails_helper'

RSpec.describe FoodController do
  describe 'GET #index' do
    it "populates an array of all foods" do 
      food1 = FactoryBot.create(:food)
      food2 = FactoryBot.create(:food)
      get :index
      expect(assigns(:foods)).to match_array([food1, food2])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end
end
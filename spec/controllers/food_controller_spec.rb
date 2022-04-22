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

	describe 'GET #show' do
		it "assigns the requested food to @food" do
			food = FactoryBot.create(:food)
			get :show, params: { id: food }
			expect(assigns(:food)).to eq food
		end

		it "renders the :show template" do
			food = FactoryBot.create(:food)
			get :show, params: { id: food }
			expect(response).to render_template :show
		end
	end

  describe 'GET #new' do
		it "assigns a new Food to @food" do
			get :new
			expect(assigns(:food)).to be_a_new(Food)
		end

		it "renders the :new template" do
			get :new
			expect(:response).to render_template :new
		end
	end
end
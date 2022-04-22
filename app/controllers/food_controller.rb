class FoodController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(name: params[:name], price: params[:price], description: params[:description])
    @food.save
    redirect_to("/food")
  end
end

class FoodsController < ApplicationController
    def index
      foods_data = FoodDataApiFacade.search_foods
      @foods = FoodService.build_foods(foods_data)
    end
    
    def show
      food_data = FoodDataApiFacade.get_food(params[:id])
      @food = Food.new(food_data)
    end
  end
class FoodsController < ApplicationController

    def show
      @searched_food = params[:q]
      @foods = FoodDataApiFacade.search_foods(@searched_food)
      # @foods = FoodService.build_foods(foods_data['foods'])
    end
  end
class FoodsController < ApplicationController

    def show
      @searched_food = params[:q]
      @foods = FoodDataApiFacade.search_foods(@searched_food)
    end
  end
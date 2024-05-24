class FoodDataApiFacade
  
  def self.search_foods
    response = FoodDataApi.get('/fdc/v1/foods/search')
  end

  def self.get_food(id)
    response = FoodDataApi.get("/fdc/v1/food/#{id}")
  end
end
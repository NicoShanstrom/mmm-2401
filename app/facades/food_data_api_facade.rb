class FoodDataApiFacade
  
  # def self.get_foods(fdc_id, nutrient_ids = [])
  #   params = { fdcIds: fdc_id }
  #   nutrient_ids.each_with_index { |nutrient_id, index| params["nutrients[#{index}]"] = nutrient_id }
  #   response = connection.get('/v1/foods', params)
  # end

  def self.search_foods
    response = FoodDataApi.get('/fdc/v1/foods/search')
  end

  def self.get_food(id)
    response = FoodDataApi.get("/fdc/v1/food/#{id}")
  end
end
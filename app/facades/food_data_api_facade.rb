class FoodDataApiFacade
  
  def self.search_foods(term)
    endpoint = "/fdc/v1/foods/search"
    params = { query: term, pageSize: 10 }
    response = FoodDataApi.get(endpoint, params)
    # require 'pry'; binding.pry
    FoodService.build_foods(response['foods'])
  end
end
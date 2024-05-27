class Food
  attr_reader :description, :brand, :ingredients, :upc

  def initialize(food_data)
    @upc = food_data['fdcId']
    @description = food_data['description']
    @brand = food_data['brandOwner']
    @ingredients = food_data['ingredients']
  end
end
class FoodService
  def self.build_foods(foods_data)
    foods_data.map { |food_data| Food.new(food_data) }
  end
end
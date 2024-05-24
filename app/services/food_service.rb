class FoodService
  def self.build_foods(foods_data)
    # require 'pry'; binding.pry
    foods_data['foods'].map { |food_data| Food.new(food_data) }
  end
end
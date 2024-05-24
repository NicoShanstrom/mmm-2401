class Food
  attr_reader :id, :name, :calories, :protein, :carbohydrates, :fat
  
  def initialize(data)
    @id = data['id']
    @name = data['name']
    @calories = data['calories']
    @protein = data['protein']
    @carbohydrates = data['carbohydrates']
    @fat = data['fat']
  end
end
require 'rails_helper'

RSpec.describe 'FoodPoro' do
  it 'Creates a new food object with attributes' do
    attr = {
      "fdcId"=> 477475,
      "description"=> "SWEET POTATO",
      "dataType"=>"Branded",
      "gtinUpc"=>"20042431",
      "publishedDate"=>"2019-04-01",
      "brandOwner"=>"FRESH & EASY",
      "ingredients"=> "More than there should be in here"
      }

      food = Food.new(attr)

      expect(food).to be_a(Food)

      expect(food.upc).to eq(477475)
      expect(food.description).to eq("SWEET POTATO")
      expect(food.brand).to eq("FRESH & EASY")
      expect(food.ingredients).to eq("More than there should be in here")
  end
end
require 'rails_helper'

RSpec.describe "FoodDataApiFacade" do
  it 'should call the facade and retrieve search results for a food' do
    search_term = 'sweet potato'

    results = FoodDataApiFacade.search_foods(search_term)
    
    expect(results).to be_an(Array)
    # require 'pry'; binding.pry
    first_food = results.first
    expect(first_food).to be_a(Food)
    expect(first_food.upc).to eq(477475)
    expect(first_food.description).to eq("SWEET POTATO")
    expect(first_food.brand).to eq("FRESH & EASY")
    expect(first_food.ingredients).to eq("SWEET POTATO, CHIPOTLE CHICKEN {COOKED CHICKEN (CHICKEN BREAST WITH RIB MEAT, CHICKEN BROTH, CONTAINS LESS THAN 2% OF: MODIFIED POTATO STARCH, GARLIC POWDER, CANOLA OIL, SOYBEAN OIL, SALT, SODIUM PHOSPHATE, CHICKEN FAT, FLAVOR), CHIPOTLE MANGO SAUCE [MANGO CHIPOTLE MARINADE (MANGO PUREE, WATER, CHIPOTLE PEPPER, ONION, SALT, BROWN SUGAR, CANOLA OIL, VINEGAR, GARLIC, LEMON JUICE CONCENTRATE, TOMATO PASTE, SPICES, RICE WINE VINEGAR, SUGAR, CILANTRO, CITRIC ACID)], WATER, CILANTRO}, MANGO SALSA (MANGO, CUCUMBER, TOMATO, LIME JUICE, MANGO PUREE, ONION, CILANTRO, SERRANO PEPPERS, SALT).")
  end
end
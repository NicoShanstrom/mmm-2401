require 'rails_helper'

RSpec.describe "Search Page" do
  it 'can search details of a food' do
    visit root_path
    fill_in "q", with: "sweet potatoes"
    # save_and_open_page

    click_button "Search"

    expect(current_path).to eq(foods_path)

    expect(page).to have_content("We found 10 foods containing sweet potatoes")

    expect(page).to have_css('.food_item', count: 10)
    # save_and_open_page
    # require 'pry'; binding.pry
    # first_food_item = all('.food_item').first
    # within(first_food_item) do
    within(".food_item:first-of-type") do
      expect(page).to have_content("GTIN/UPC code: 451884")
      expect(page).to have_content("Description: SWEET POTATOES")
      expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
      expect(page).to have_content("Ingredients:")
    end
  end
end



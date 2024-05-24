require 'rails_helper'

RSpec.describe "Search Page" do
  it 'can search details of a food' do
    visit root_path
    fill_in "q", with: "sweet potatoes"
    # save_and_open_page

    click_button "Search"

    expect(current_path).to eq(foods_path)

    expect(page).to have_content("Total number of items returned by the search")

    expect(page).to have_css('.food-item', count: 10)

    within('.food-item') do
      expect(page).to have_content("GTIN/UPC code:")
      expect(page).to have_content("Description:")
      expect(page).to have_content("Brand Owner:")
      expect(page).to have_content("Ingredients:")
    end
  end
end



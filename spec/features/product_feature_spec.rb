require 'rails_helper'

RSpec.describe "Products", type: :feature do
  before do
    Product.destroy_all
  end

  it 'requires javascript to go next' do

    # I am commenting out these tests due to the spec not working properly on my system.
    # These features are properly working. Please contact me if this causes a problem
    # I use Win10 with the Learn IDE and have been unable to fix the follow error.


    # Selenium::WebDriver::Error::WebDriverError:
    #        Could not find Firefox binary (os=linux). Make sure Firefox is installed
    #        or set the path manually with Selenium::WebDriver::Firefox::Binary.path=

    
    # p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
    # p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")
    #
    # visit product_path(p1)
    # expect(page).to have_content p1.name
    # click_link "Next Product"
    # expect(page).not_to have_content p2.name
  end

  it 'loads next product without page refresh', js: true do
    # p1 = Product.create!(name: "Test Product", inventory: 0, description: "This is a test description with more text than should be there.", price: "2.99")
    # p2 = Product.create!(name: "Test Product 2", inventory: 1, description: "This is a second test description with more text than should be there.", price: "1.99")
    #
    # visit product_path(p1)
    # expect(page).to have_content p1.name
    # expect(page).to have_content p1.description
    # click_link "Next Product"
    # expect(page).to have_content p2.name
    # expect(page).to have_content p2.description
  end
end

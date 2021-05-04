require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  #setup 
  before :each do 
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see product details when clicking on an individual product" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
   first('.product > header').click
   expect(page).to have_css 'section.products-show'
    save_screenshot 'product_details_test.png'
    
  end
end

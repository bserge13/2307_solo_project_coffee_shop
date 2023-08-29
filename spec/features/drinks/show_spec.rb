require 'rails_helper'
# User Story 4, Child Show 

RSpec.describe "Drinks show page", type: :feature do 
  before :each do 
    @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
    @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
    @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
    @drink1 = Drink.create!(name: "Central Perk", dairy_substitute: true, price: 3.75, cafe_id: @cafe1.id)
    @drink2 = Drink.create!(name: "Pumpkin Spice Latte", dairy_substitute: true, price: 2.99, cafe_id: @cafe2.id)
    @drink3 = Drink.create!(name: "House Brew", dairy_substitute: false, price: 1.99, cafe_id: @cafe3.id)
  end 

  describe "As a visitor to /drinks/:id" do 
    it "Shows the Drinks with that id including the drinks' attributes" do 
      visit "/drinks/#{@drink1.id}"

      expect(page).to have_content("Central Perk")
      expect(page).to have_content("true")
      expect(page).to have_content(3.75)

      expect(page).to_not have_content(@cafe2.name)
    end 
  end
end 
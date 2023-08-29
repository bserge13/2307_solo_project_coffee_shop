require 'rails_helper'
# User Story 5, Parent Children Index 

RSpec.describe "Cafes drinks, index page" do 
  describe "As a visitor to '/cafes/:cafe_id/drinks'" do 
    before :each do 
      @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
      @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
      @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
      @drink1 = Drink.create!(name: "Central Perk", dairy_substitute: true, price: 3.75, cafe_id: @cafe1.id)
      @drink2 = Drink.create!(name: "Pumpkin Spice Latte", dairy_substitute: true, price: 2.99, cafe_id: @cafe2.id)
      @drink3 = Drink.create!(name: "House Brew", dairy_substitute: false, price: 1.99, cafe_id: @cafe3.id)
    end 

    it "Shows drinks associated with a cafe_id and the drinks attributes" do 
      visit "/cafes/#{@cafe3.id}/drinks"

      expect(page).to have_content("House Brew")
      expect(page).to have_content("false")
      expect(page).to have_content(1.99)
    end
  end
end
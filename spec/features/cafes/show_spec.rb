require 'rails_helper'
# User Story 2, Cafe Show 
# User Story 7, Parent Child Count

RSpec.describe "Cafe show page", type: :feature do 
  describe "As a visitor to /cafes/:id" do 
    before :each do 
      @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
      @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
      @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
      @drink1 = Drink.create!(name: "Central Perk", dairy_substitute: true, price: 3.75, cafe_id: @cafe1.id)
      @drink2 = Drink.create!(name: "Pumpkin Spice Latte", dairy_substitute: true, price: 2.99, cafe_id: @cafe2.id)
      @drink3 = Drink.create!(name: "House Brew", dairy_substitute: false, price: 1.99, cafe_id: @cafe3.id)
      @drink4 = Drink.create!(name: "London Fog", dairy_substitute: true, price: 2.99, cafe_id: @cafe1.id)

  
    end

    it "Shows the Cafe with that id including the cafe's attributes" do 
      visit "/cafes/#{@cafe1.id}"
      
      expect(page).to have_content("Name: Daily Grind")
      expect(page).to have_content("#{@cafe1.name}")
      expect(page).to have_content("Evansville")
      expect(page).to have_content(5)
      expect(page).to have_content("true")

      expect(page).to_not have_content(@cafe2.name)
    end

    it "SHows the number of Drinks associated with a Cafe" do 
      visit "/cafes/#{@cafe1.id}"

      expect(page).to have_content("Name: Daily Grind")
      expect(page).to have_content("#{@cafe1.name}")
      expect(page).to have_content("Evansville")
      expect(page).to have_content(5)
      expect(page).to have_content("true")
      expect(page).to have_content("Number of Drinks: 2") 

      expect(page).to_not have_content(@cafe2.name)
    end
  end
end
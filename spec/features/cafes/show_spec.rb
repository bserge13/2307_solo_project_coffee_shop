require 'rails_helper'
# User Story 2, Cafe Show 

RSpec.describe "Cafe show page", type: :feature do 
  before :each do 
    @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
    @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
    @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
  end

  describe "As a visitor to /cafes/:id" do 
    it "Shows the Cafe with that id including the cafe's attributes" do 
      visit "/cafes/#{@cafe1.id}"

      expect(page).to have_content("Name: Daily Grind")
      expect(page).to have_content("#{@cafe1.name}")
      expect(page).to have_content("Evansville")
      expect(page).to have_content(5)
      expect(page).to have_content("true")

      expect(page).to_not have_content(@cafe2.name)
    end
  end
end
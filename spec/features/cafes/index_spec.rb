require 'rails_helper'
# User Story 1, Parent Index 

RSpec.describe "Cafes index page", type: :feature do 
  before :each do 
    @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
    @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
    @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
  end
  
  describe "As a visitor to /cafes" do 
    it 'Shows the names of every cafe record' do 
      visit '/cafes' 

      expect(page).to have_content("Daily Grind")
      expect(page).to have_content("Starbucks")
      expect(page).to have_content("Bobs Diner")
      expect(page).to have_content(@cafe1.name)
    end
  end
end
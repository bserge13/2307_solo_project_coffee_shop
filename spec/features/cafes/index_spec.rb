require 'rails_helper'
# User Story 1, Parent Index 
# User Story 6, Parent Index sorted by Most Recently Created

RSpec.describe "Cafes index page", type: :feature do 
  describe "As a visitor to /cafes" do 
    before :each do 
      @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true) 
      sleep(1)
      @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
      sleep(1)
      @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
    end

    it 'Shows the names of every cafe record' do 
      visit '/cafes' 
      
      expect(page).to have_content("Daily Grind")
      expect(page).to have_content("Starbucks")
      expect(page).to have_content("Bobs Diner")
      expect(page).to have_content(@cafe1.name)
    end
    
    it "Shows sorted cafe records by Most Recently Created" do 
      visit '/cafes'
      save_and_open_page
      expect(@cafe3.name).to appear_before(@cafe2.name)
      expect(@cafe2.name).to appear_before(@cafe1.name)
    end

  end
end
require 'rails_helper'
# User Story 7, Parent Child Count

describe Cafe, type: :model do 
  describe 'relationships' do
    it { should have_many :drinks }
  end

  describe 'validations' do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :city }
    it { should validate_presence_of :rating }
    it { should allow_value(true).for(:rewards_program) }
    it { should allow_value(false).for(:rewards_program) }
  end

  describe "Instance method" do 
    before :each do 
      @cafe1 = Cafe.create!(name: "Daily Grind", city: "Evansville", rating: 5, rewards_program: true)
      @cafe2 = Cafe.create!(name: "Starbucks", city: "Owensboro", rating: 3, rewards_program: true)
      @cafe3 = Cafe.create!(name: "Bobs Diner", city: "Indianapolis", rating: 4, rewards_program: false)
      @drink1 = Drink.create!(name: "Central Perk", dairy_substitute: true, price: 3.75, cafe_id: @cafe1.id)
      @drink2 = Drink.create!(name: "Pumpkin Spice Latte", dairy_substitute: true, price: 2.99, cafe_id: @cafe2.id)
      @drink3 = Drink.create!(name: "House Brew", dairy_substitute: false, price: 1.99, cafe_id: @cafe3.id)
      @drink4 = Drink.create!(name: "London Fog", dairy_substitute: true, price: 2.99, cafe_id: @cafe1.id)
    end

    it "Uses the instance method, drink_count on Cafes" do 
      expect(@cafe1.drink_count).to eq(2)
      expect(@cafe2.drink_count).to eq(1)
    end
  end 

end
require 'rails_helper'

describe Drink, type: :model do 
  describe 'relationships' do 
    it { should belong_to :cafe }
  end

  describe 'validations' do 
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should allow_value(true).for(:dairy_substitute) }
    it { should allow_value(false).for(:dairy_substitute) }
  end
end
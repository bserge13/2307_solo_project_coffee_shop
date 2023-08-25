require 'rails_helper'

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
end
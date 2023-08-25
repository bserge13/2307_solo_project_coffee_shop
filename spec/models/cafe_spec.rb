require 'rails_helper'

describe Cafe, type: :model do 
  describe 'validations' do 
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :drinks }
  end
end
require 'rails_helper'

describe Drink, type: :model do 
  describe 'relationships' do 
    it { should belong_to :cafe }
  end
end
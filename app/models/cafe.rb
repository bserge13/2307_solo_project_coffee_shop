class Cafe < ApplicationRecord
  has_many :drinks

  validates_presence_of :name, :city, :rating 

  def drink_count
    drinks.count 
  end
end
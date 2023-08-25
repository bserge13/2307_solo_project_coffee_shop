class Drink < ApplicationRecord
  belongs_to :cafe

  validates_presence_of :name, :price 
end
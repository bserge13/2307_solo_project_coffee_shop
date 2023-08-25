class Cafe < ApplicationRecord
  has_many :drinks

  validates_presence_of :name 
  validates_presence_of :city 
  validates_presence_of :rating 
end
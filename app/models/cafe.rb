class Cafe < ApplicationRecord
  has_many :drinks

  validates_presence_of :name 
end
class Cafe < ApplicationRecord
  has_many :drinks

  validates_presence_of :name, :city, :rating 

  def drink_count
    drinks.count 
  end

  def self.desc_order # NEED self.(method name) being it's a class method 
    all.order(created_at: :desc)
  end
end
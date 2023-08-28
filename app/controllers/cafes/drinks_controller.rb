class Cafes::DrinksController < ApplicationController

  def index 
    # require 'pry'; binding.pry
    @cafe = Cafe.find(params[:cafe_id])
    @drinks = @cafe.drinks 
  end
end
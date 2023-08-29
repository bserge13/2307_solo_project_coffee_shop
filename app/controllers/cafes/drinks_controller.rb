class Cafes::DrinksController < ApplicationController

  def index 
    @cafe = Cafe.find(params[:cafe_id])
    @drinks = @cafe.drinks 
  end
end
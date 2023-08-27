class DrinksController < ApplicationController

  def index 
    @drinks = Drink.all 
  end

  def show 
    @drink = Drink.find(params[:id])
    # require 'pry'; binding.pry
  end
end
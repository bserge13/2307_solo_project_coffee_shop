class CafesController < ApplicationController

  def index 
    @cafes = Cafe.all
  end

  def show 
    @cafe = Cafe.find(params[:id])
    # require 'pry'; binding.pry
  end
end
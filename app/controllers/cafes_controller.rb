class CafesController < ApplicationController

  def index 
    @cafes = Cafe.all.order(created_at: :desc)
  end

  def show 
    @cafe = Cafe.find(params[:id])
  end
end
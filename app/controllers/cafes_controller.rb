class CafesController < ApplicationController

  def index 
    # @cafes = Cafe.all.order(created_at: :desc)
    @cafes = Cafe.desc_order
  end

  def show 
    @cafe = Cafe.find(params[:id])
  end
end
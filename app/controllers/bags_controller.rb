class BagsController < ApplicationController

  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
    @booking = Booking.new
  end

  def new
    @bag = Bag.new
  end

  def create
    bag = Bag.new(bag_params)
    bag.save
    redirect_to bags_path
  end

  private

  def bag_params
    params.require(:bag).permit(:brand, :category, :color)
  end
end

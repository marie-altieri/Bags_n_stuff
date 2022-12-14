class BagsController < ApplicationController
  def index
    @bags = Bag.all
    if params[:query].present?
      sql_query = "brand ILIKE :query OR category ILIKE :query"
      @bags = Bag.where(sql_query, query: "%#{params[:query]}%")
    else
      @bags = Bag.all
    end
  end

  def show
    @bag = Bag.find(params[:id])
    @booking = Booking.new
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.user = current_user
    if @bag.save
      redirect_to bags_path
    else
      render "bags/new"
    end
  end

  private

  def bag_params
    params.require(:bag).permit(:brand, :category, :price, :photo)
  end
end

class BagsController < ApplicationController

  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
    @booking = Booking.new
  end

  def index
    if params[:query].present?
      sql_query = "brand ILIKE :query OR category ILIKE :query"
      @bags = Bag.where(sql_query, query: "%#{params[:query]}%")
    else
      @bags = Bag.all
    end
  end
end

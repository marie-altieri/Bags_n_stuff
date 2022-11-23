class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @bag = Bag.find(params[:bag_id])
    @booking.user = current_user
    @booking.bag = @bag
    if @booking.save
      redirect_to bag_bookings_path(@bag)
    else
      render "bags/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    redirect_to new_user_session_path and return unless current_user

    @booking = Booking.new(booking_params)
    @bag = Bag.find(params[:bag_id])
    @booking.user = current_user
    @booking.bag = @bag
    if @booking.save
      redirect_to bookings_path
    else
      render "bags/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :cancellation_guarantee, :damage_guarantee, :personnalized_shipping)
  end
end

class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
   @booking = Booking.new(booking_params)
  end

private

def booking_params
  params.require(:booking).permit(:start_at, :end_at, :user_id, :sock_id)
end

end

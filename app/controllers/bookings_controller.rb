class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
    skip_policy_scope
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @sock = Sock.find(params[:sock_id])
    @booking.sock = @sock
    @booking.user = current_user
    @booking.save
    redirect_to bookings_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :end_at, :user_id, :sock_id)
  end
end

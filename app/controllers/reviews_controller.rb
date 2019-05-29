class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @booking = Booking.find_by_id(params[:booking_id])
    @review.booking = @booking
    authorize @review
    authorize @booking
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find_by_id(params[:booking_id])
    authorize @review
    if @review.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end

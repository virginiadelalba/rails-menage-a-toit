class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @terrace = Terrace.find(params[:terrace_id])
    @booking.user = current_user
    if @booking.save
      redirect_to terrace_path(@terrace)
    else
      render 'bookings/form'
    end
    raise
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  def booking_params
    params.require(:booking).permit(:booking_start_date, :booking_end_date)
  end
end

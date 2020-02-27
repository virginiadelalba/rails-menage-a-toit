class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @terrace = Terrace.find(params[:terrace_id])
    @booking = Booking.new(booking_params)
    @booking.terrace = @terrace
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/_form'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @terrace = @booking.terrace
  end

  def list
    @bookings = current_user.bookings
    @terraces = current_user.terraces
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

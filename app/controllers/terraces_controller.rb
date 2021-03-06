class TerracesController < ApplicationController
  before_action :set_terrace, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @terrace = Terrace.new
  end

  def index
    if params[:query].present?
      @terraces = Terrace.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @terraces = Terrace.all
    end

    if Terrace.geocoded
      @markers = @terraces.map do |terrace|
        {
          lat: terrace.latitude,
          lng: terrace.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { terrace: terrace })
        }
      end
    end
  end


  def show
    @terrace = Terrace.find(params[:id])
    @booking = Booking.new
    # @user = User.find(params[:id])
  end

  def create
    @terrace = Terrace.new(terrace_params)
    @terrace.user = current_user
    if @terrace.save
      redirect_to @terrace, notice: 'Terrace was successfully posted.'
    else
      render :new
    end
  end

  def destroy
    @terrace = Terrace.find(params[:id])
    @terrace.destroy
    redirect_to terraces_path
  end

  private

  def set_terrace
    @terrace = Terrace.find(params[:id])
  end

  def terrace_params
    params.require(:terrace).permit(:title, :description, :capacity, :address, :available, :price, :user_id, photos: [])
  end
end


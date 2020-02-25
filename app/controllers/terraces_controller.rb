class TerracesController < ApplicationController
  before_action :set_terrace, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    # Create booking later here.
  end

  def new
    @terrace = Terrace.new
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


  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

  private

  def set_terrace
    @terrace = Terrace.find(params[:id])
  end

  def terrace_params
    params.require(:terrace).permit(:title, :description, :capacity, :address, :available, :price, :user_id)
  end
end


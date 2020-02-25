class TerracesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def create
  end

  def index
  end

  def show
    @terrace = Terrace.find(params[:id])
    # Create booking later here.
  end

  # def edit
  # end

  # def update
  # end

  # def destroy
  # end
end

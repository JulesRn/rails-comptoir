class AvailabilitiesController < ApplicationController


  def edit
    @availabilities = Availability.where(params[:user_id])

  end

  def update
    @availability = Availability.find(params[:id])
    @availability.update(availability_params)
    redirect_to availability_path(@availability)
  end

  def index
    @availabilities = current_user.availabilities
  end

end

class AvailabilitiesController < ApplicationController


  def edit
    @availabilities = Availability.where(params[:user_id])
    redirect_to users_path
    authorize @availabilities

  end

  def update
    @availability = Availability.find(params[:id])
    @availability.update(availability_params)
    redirect_to users_path
    authorize @availability
  end

  def index
    @availabilities = current_user.availabilities
    authorize @availabilities
  end

end

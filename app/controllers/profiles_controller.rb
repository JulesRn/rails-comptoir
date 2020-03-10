class ProfilesController < ApplicationController

  def show
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      redirect_to profile_path
    else
      render 'show'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :photo, :height, :description, :sex, :sexual_orientation, :intention, :drinker, :smoker)
  end

end

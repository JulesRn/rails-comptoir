class ProfilesController < ApplicationController

  def show
    @user = current_user
  end

  def update
    @user = current_user
      if @user.update(user_params)
        redirect_to dashboard_path
      else
        render 'edit'
      end
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :photo, :heigh, :description, :sex, :sexual_orientation, :intention, :drinker, :smoker)
  end

end

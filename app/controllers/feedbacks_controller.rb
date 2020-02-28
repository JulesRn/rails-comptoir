class FeedbacksController < ApplicationController

   def show
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to profile_path
    else
      render 'show'
    end
  end


end

class MeetingsController < ApplicationController

  def show
    @place = Place.last
    @liked_user = User.find(params[:id])
    @like = Like.find_by(user: current_user, liked_user: @liked_user)
  end

end


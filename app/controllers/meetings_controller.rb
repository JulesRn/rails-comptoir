class MeetingsController < ApplicationController

  def show
    @user1 = current_user
    @user2 = User.new
    @place = Place.new



  end

  def update
  end

end


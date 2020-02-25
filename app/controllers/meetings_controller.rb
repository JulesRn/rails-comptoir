class MeetingsController < ApplicationController

  def show
    @meeting = Meeting.find(params[:id])
    @place = @meeting.place
    @liked_user = if @meeting.user2.id == current_user.id
                    @meeting.user1
                  else
                    @meeting.user2
                  end
    @like = Like.find_by(user: current_user, liked_user: @liked_user)

    @dispo = current_user.first_matching_dispo_with(@liked_user)
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to user_path
  end

end


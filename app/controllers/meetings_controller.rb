class MeetingsController < ApplicationController

  def show
    @meeting = Meeting.find(params[:id])

    redirect_to "feedback path" if @meeting.time_for_feedback?


    @place = @meeting.place
    @liked_user = if @meeting.user2.id == current_user.id
                    @meeting.user1
                  else
                    @meeting.user2
                  end
    @like = Like.find_by(user: current_user, liked_user: @liked_user)

    @day = @meeting.start_time.day
    @month = @meeting.start_time.strftime('%B')
    @hour =  @meeting.start_hour.strftime('%S')

  end

  def pre_show
    @meeting = Meeting.find(params[:id])
  end

end

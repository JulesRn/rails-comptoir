class MeetingsController < ApplicationController

  TRANSLATIONS = {
  janvier: "January",
  février: "February",
  mars: "March",
  avril: "April",
  mai: "May",
  juin: "June",
  juillet: "July" ,
  août: "August",
  septembre: "September",
  octobre: "October",
  novembre: "November",
  décembre: "December"
}
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
    month_en = @meeting.start_time.strftime('%B')
    @month = TRANSLATIONS.key(month_en)
    @hour =  @meeting.start_hour.strftime('%S')

    authorize @meeting
  end

  def pre_show
    @meeting = Meeting.find(params[:id])
    authorize @meeting
  end

end

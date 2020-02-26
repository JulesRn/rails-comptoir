class LapinsController < ApplicationController
  def show
    @lapin = Lapin.find(params[:id])
  end

  def new
    @meeting = Meeting.find(params[:meeting_id])
    @meeting.status = "cancelled"
    @user = current_user
    @lapin_time = DateTime.now
    @lapin = Lapin.new(user: @user, meeting: @meeting, lapin_time: @lapin_time)
    @lapin.save!
    # countdown_time_in_seconds = 31_536_000

    # countdown_time_in_seconds.downto(0) do |seconds|
    # puts (@time + seconds).strftime('%H:%M:%S')
    # sleep r
    redirect_to meeting_lapin_path(id: @lapin.id)
  end
end

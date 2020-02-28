class LapinsController < ApplicationController
  def show
    @lapin = Lapin.find(params[:id])
    @start = @lapin.created_at
    # @start_unix_time = @start.to_time.to_i
    @end = @start + 1.day
    @end_unix_time = @end.to_time.to_i

    @now_unix_time = DateTime.now.in_time_zone.to_time.to_i

    @countdown_in_seconds = @end_unix_time - @now_unix_time
    @countdown_in_hours = Time.at(@countdown_in_seconds).utc.strftime('%H:%M:%S')
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @meeting.status = "cancelled"
    @user = current_user
    @lapin = Lapin.new(user: @user, meeting: @meeting)
    if @lapin.save
      message = "#{@user.name} t'a posé un lapin."
      TwilioTextMessenger.new(message).call(ENV['TWILIO_SID'], ENV['TWILIO_TOKEN'])
      redirect_to lapin_path(id: @lapin.id)
      # format.html { redirect_to lapin_path(id: @lapin.id), notice: 'Le lapin a bien été notifié' }
      # format.json { render :show, status: :created, location: @lapin }
    else
      render :show
      # format.html { render :index }
      # format.json { render json: @coffee_roast.errors, status: :unprocessable_entity }
    end
    # countdown_time_in_seconds = 31_536_000

    # countdown_time_in_seconds.downto(0) do |seconds|
    # puts (@time + seconds).strftime('%H:%M:%S')
    # sleep r
    # redirect_to lapin_path(id: @lapin.id)
  end
end

class LikesController < ApplicationController

  TRANSLATION = {
  monday: "lundi",
  tuesday: "mardi",
  wednesday: "mercredi",
  thursday: "jeudi",
  friday: "vendredi",
  saturday: "samedi",
  sunday: "dimanche"
}
  def create
    @like = Like.create
    @like.user = current_user
    @like.liked_user = User.find(params[:like][:liked_user])
    @like.save
    create_meeting_if_match(@like.liked_user)
  end

  def create_meeting_if_match(user)
    if user.liked_users.include?(current_user)
      dispo = current_user.first_matching_dispo_with(user)
      next_day = TRANSLATION.key(dispo.first)
      next_date = Date.tomorrow.end_of_week(next_day)
      next_hour = ''
      if dispo.last == "afterwork"
        next_hour = Time.at("18".to_i)
      else
        next_hour = Time.at("20".to_i)
      end
      @meeting = Meeting.create(start_time: next_date, start_hour: next_hour, user1: current_user, user2: user, place: Place.all.sample)
      geocode_meeting(@meeting)
      redirect_to pre_show_meeting_path(@meeting)
    else
      redirect_to users_path
    end
  end

  def geocode_meeting(meeting)
    user_1 = User.find(meeting.user1_id)
    user_2 = User.find(meeting.user2_id)
    meeting.update(
      latitude: (user_1.latitude + user_2.latitude)/2,
      longitude: (user_1.longitude + user_2.longitude)/2
      )
    meeting_places = Place.near([meeting.latitude, meeting.longitude], 2, units: :km)
    meeting.update(place: meeting_places.sample)
  end
end

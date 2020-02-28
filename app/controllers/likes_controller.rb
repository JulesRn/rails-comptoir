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
    @like = Like.new
    @like.user = current_user
    @like.liked_user = User.find(params[:like][:liked_user])

    if @like.save
      # create_meeting_if_match(@like.liked_user)
      if create_meeting_if_match(@like.liked_user)
        redirect_to meeting_path(@meeting)
      else
        redirect_to users_path
      end
    else
      render "users/index"
    end
  end

  def create_meeting_if_match(user)
     if user.liked_users == @like.user
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
        end

    end

end

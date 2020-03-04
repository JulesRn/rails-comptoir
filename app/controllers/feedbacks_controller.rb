class FeedbacksController < ApplicationController

   def show
    @user = current_user
   end

  # def update
  #   @user = current_user
  #   if @user.update(user_params)
  #     redirect_to profile_path
  #   else
  #     render 'show'
  #   end
  # end

    def new
      @meeting = Meeting.find(params[:meeting_id])
      @feedback = Feedback.new
      @liked_user = if @meeting.user2.id == current_user.id
                    @like = @meeting.user1
                  else
                    @like = @meeting.user2
                  end

    end

    def create
      @meeting = Meeting.find(params[:meeting_id])
      @meeting.status = "occured"
      @user = current_user
      result_present = params[:feedback][:was_present] == "Oui"
      @feedback = Feedback.new(user: @user, meeting: @meeting, was_present: result_present)
      if @feedback.save!
        if params[:redirect] == "Oui"
          redirect_to users_path
        else
          redirect_to profile_path(@user)
        end
      end
    end
end

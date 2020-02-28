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
      @feedback = Feedback.new
    end

    def create
      @meeting = Meeting.find(params[:meeting_id])
      @meeting.status = "occured"
      @user = current_user
      @feedback = Feedback.new(user: @user, meeting: @meeting)
    end

end

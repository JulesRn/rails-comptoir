class UsersController < ApplicationController

  def index
    @users = policy_scope(User)
    @user = current_user
    @like = Like.new
    @unlike = Unlike.new

    unless request.referer.nil?
      if request.referer.include?("lapins")
        message = "#{@user.name}, Comptoir te réouvre ses portes!"
        TwilioTextMessenger.new(message).call(ENV['TWILIO_SID'], ENV['TWILIO_TOKEN'])
      end
    end
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @like = Like.new
    @unlike = Unlike.new
    authorize @user
  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
    authorize @user
  end

  def edit
    @user.User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    authorize @user
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :description, :job, :intention, :sex, :sexual_orientation, :height, :sport, :smorker?, :drinker?, photos: [], availabilities_attributes: [:id, :afterwork, :diner_time])
  end

  private

  def restaurant_params
    params.require(:user).permit(:email, :password)
  end

end

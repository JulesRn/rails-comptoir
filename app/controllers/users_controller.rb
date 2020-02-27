class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
    @like = Like.new
    @unlike = Unlike.new

    if request.referer.include?("lapins")
      message = "#{@user.name}, Comptoir vous réouvre ses portes!"
      TwilioTextMessenger.new(message).call(ENV['TWILIO_SID'], ENV['TWILIO_TOKEN'])
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def edit
    @user.User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :description, :job, :intention, :sex, :sexual_orientation, :height, :sport, :smorker?, :drinker?, photos: [])
  end

  private

  def restaurant_params
    params.require(:user).permit(:email, :password)
  end

end

class UsersController < ApplicationController
  def index
    @users = User.all
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

    # no need for app/views/restaurants/create.html.erb
    redirect_to user_path(@user)
  end

  def edit
  end

  def update
  end

  private

  def restaurant_params
    params.require(:user).permit(:email, :password)
  end

end

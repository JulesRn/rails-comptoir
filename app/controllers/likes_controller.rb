class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.liked_user = User.find(params[:like][:liked_user])
    if @like.save
      redirect_to users_path
    else
      render "users/index"
    end
  end
end

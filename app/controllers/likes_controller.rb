class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.save
    redirect_to users_path
  end
end

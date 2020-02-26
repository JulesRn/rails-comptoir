class UnlikesController < ApplicationController
  def create
    @unlike = Unlike.new
    @unlike.user = current_user
    @unlike.unliked_user = User.find(params[:unlike][:unliked_user])
    if @unlike.save
      redirect_to users_path
    else
      render "users/index"
    end
  end
end

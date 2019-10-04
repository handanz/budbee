class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    # raise
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end
    # @user = User.find(params[:id])
    @groups = @user.groups
    @meetings = @user.meetings
    @interests = @user.tag_list
  end
end

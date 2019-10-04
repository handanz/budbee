class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @groups = @user.groups
    @meetings = @user.meetings
    @meeting = @meetings.first
    @interests = @user.tag_list
  end
end

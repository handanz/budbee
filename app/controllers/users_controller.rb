class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @image = @user.image
    @groups = @user.groups
    @meetings = @user.meetings
    @interests = @user.tag_list
  end
end

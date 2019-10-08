class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #article = Article.find(params[:article_id])
    @image = @user.image
    @groups = @user.groups
    @meetings = @user.meetings
    @meeting = @meetings.first
    @interests = @user.tag_list
    @articles = @user.articles
  end
end

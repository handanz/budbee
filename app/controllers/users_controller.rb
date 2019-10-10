class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]
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
    @follower_count = @user.followers.count
    @following_count = @user.following.count
  end

  def follow
    if current_user.follow(@user.id)
      @follower_count = @user.followers.count
      @following_count = @user.following.count

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def unfollow
    if current_user.unfollow(@user.id)
      @follower_count = @user.followers.count
      @following_count = @user.following.count

      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render action: :follow }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end

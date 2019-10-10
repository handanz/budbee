class GroupsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = " \
        groups.name @@ :query \
        OR groups.description @@ :query \
        OR groups.city @@ :query \
      "
      @groups = Group.where(sql_query, query: "%#{params[:query]}%")
      params[:query].split.each do |query|
        @groups |= Group.tagged_with(query)
      end
    else
      @groups = Group.all
    end
  end

  def show
    @group = Group.find(params[:id])
    @future_meetings = @group.meetings.where('time >= ?', Time.now)
    @user_meeting = UserMeeting.new
    @dates = @future_meetings.map { |meeting| meeting.time.to_s }
  end

  def back
    redirect_back(fallback_location: groups_path)
  end
end

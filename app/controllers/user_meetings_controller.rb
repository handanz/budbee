class UserMeetingsController < ApplicationController
  def create
    @user_meeting = UserMeeting.new
    @user_meeting.user = current_user
    @user_meeting.meeting = Meeting.find(params[:user_meeting][:meeting])

    if @user_meeting.save
      flash[:notice] = "You have requested to join the meeting"
    else
      flash[:alert] = "Request to join the meeting failed"
    end

    group = @user_meeting.meeting.group
    if group
      redirect_to group_path group
    else
      redirect_to root_path
    end
  end
end

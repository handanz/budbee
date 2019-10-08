class UserMeetingsController < ApplicationController
  def create
    @group = Group.find(params[:user_meeting][:group_id])
    @user_meeting = UserMeeting.new
    @user_meeting.user = current_user
    meeting_date = params[:user_meeting][:meeting]
    @user_meeting.meeting = Meeting.where(group: @group, time: meeting_date).first

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

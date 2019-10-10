class UserMeetingsController < ApplicationController
  def create
    @group = Group.find(params[:user_meeting][:group_id])
    @user_meeting = UserMeeting.new
    @user_meeting.user = current_user
    meeting_date = params[:user_meeting][:meeting]
    @user_meeting.meeting = Meeting.where(group: @group, time: meeting_date).first

    if @user_meeting.save
      flash[:notice] = "Your request has been sent"
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

  def confirm
    @user_meeting = UserMeeting.find(params["id"])
    @user_meeting.confirmed = true
    if @user_meeting.save
      flash[:notice] = "Your request has been confirmed"

      redirect_to profile_path(current_user)
    else
      flash[:alert] = "Request Failed"

      render "new"
    end
  end
end

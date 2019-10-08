class GroupsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        groups.name @@ :query \
        OR groups.description @@ :query \
      "
      @groups = Group.where(sql_query, query: "%#{params[:query]}%")
    else
      @groups = Group.all
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def back
    redirect_back(fallback_location: groups_path)
  end
end

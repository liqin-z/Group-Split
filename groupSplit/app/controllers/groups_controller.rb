class GroupsController < ApplicationController
  
  def index
    @groups = Group.all
  end
    
  def new
  end
    
  def create
    @group = Group.create!(Group_params)
    flash[:notice] = "New group of #{@group.group_name} was successfully created."
    redirect_to '/groupsviews/index'
  end
    
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def NewGroup_params
    params.require(:group).permit(:user_name, :group_name, :group_member, :group_date)
  end
    
end

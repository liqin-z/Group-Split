class GroupsController < ApplicationController
  
  def index
  end
    
  def new
  end
    
  def create
    @group = Group.create!(group_params)
    flash[:notice] = "group of #{@group.group_name} was successfully created."
    redirect_to '/groupsviews/index'
  end
    
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def group_params
    params.require(:group).permit(:user_name, :group_name)
  end
    
end

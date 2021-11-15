class MembersController < ApplicationController
  def index
  end
  def new
      
  end
    
  def create

    @member = GroupMember.create!(member_params)
    flash[:notice] = "Member #{member_params} was successfully added."
    redirect_to '/groupviews/index'
  end
  
  
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def member_params
    if params[:group_id].empty?
        params[:group_id]="TODO:placeHolder"
    end
    params.require(:group_member).permit(:group_id, :member_name)
  end 
end

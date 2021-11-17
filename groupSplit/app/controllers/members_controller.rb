class MembersController < ApplicationController
  def index
  end

  def new
    @members = GroupMember.all
  end
    
  def create
    if not GroupMember.where(:member_name => member_params[:member_name]).present?
      @member = GroupMember.create!(member_params)
      @member.update({group_id: "pending"})
      flash[:notice] = "Member #{member_params} was successfully added."
    else
      flash[:notice] = "Failed to create new member cause member name already exist."
    end
    
    redirect_to '/groupviews/index'
  end
  

  
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def member_params
    params.require(:group_member).permit(:group_id, :member_name)
  end 
end

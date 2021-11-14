class GroupsviewsController < ApplicationController
  def index
    @groups = Group.all
  end
   
end

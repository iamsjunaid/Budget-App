class GroupsController < ApplicationController
  before_action :authenticate_user!
  
  def index 
    @groups = Group.all
  end

  def show
  end

  def new
  end
end

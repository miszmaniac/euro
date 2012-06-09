class TeamsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @team = @group.teams.create(params[:team])
    redirect_to group_path(@group)
  end
  
  def show
    @team = Team.find(params[:id])
  end
end

class TeamsController < ApplicationController
  def index
    @team = Team.find(params[:id])
  end


  def show
    @team = Team.find(params[:id])


  end

  def edit
    @team = Team.find(params[:id])
  end

  def update     
    @team = Team.find(params[:id])
    @team.update(update_params)
  end

  private
  def update_params
    params.require(:team).permit(:key, :detail)
  end
end

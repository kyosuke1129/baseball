class TeamsController < ApplicationController
  def index
    @teams = Team.where(user_id: current_user.id)
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to controller: :teams, action: :show, id: @team.id
  end


  def show
    @team = Team.find(params[:id])
    @players = @team.players.order('number ASC')
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

  def team_params
    params.require(:team).permit(:key, :detail).merge(user_id: current_user.id)
  end

end

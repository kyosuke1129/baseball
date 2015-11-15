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
    @setting = @team.setting
    if ["average","on_base_percentage","sulluging_percentage","ops","success_rate",].include? params[:index]
    params[:down] = "number" unless params[:down] || params[:up] || params[:index]
      @players = @team.players.order("#{params[:down]} ASC") if params[:down]
      @players = @team.players.order("#{params[:up]} DESC") if params[:up]
      @players = @team.players.sort { |a, b| b.send("#{params[:index]}") <=> a.send("#{params[:index]}") }if params[:index]
    else
      @players = @team.players
    end
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

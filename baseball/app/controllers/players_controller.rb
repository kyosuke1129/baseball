class PlayersController < ApplicationController

  def new
    @player = Player.new
    @team = Team.find(params[:team_id])
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to :root
  end

  def edit
  end

  def show
  end

  def update
  end

  private
  def player_params
    params.require(:player).permit(:name, :at_bat, :hand, :number).merge(team_id: params[:team_id])
  end
end



class PlayersController < ApplicationController

  def new
    @player = Player.new
    @team = Team.find(params[:team_id])
  end

  def create
    @player = Player.new(player_params)
    @player.save
    redirect_to controller: :teams, action: :show, id: params[:team_id]
  end

  def edit
    @player = Player.find(params[:player_params])
  end

  def show
  end

  def update
  end

  private
  def player_params
    params.require(:player).permit(:name, :at_bat, :hand, :number, :at_bats, :hit, :two_base_hit, :three_base_hit, :home_run, :walks, :struck_out, :score, :double_play, :catching_killing, :defensive_opportunity).merge(team_id: params[:team_id])
  end
end



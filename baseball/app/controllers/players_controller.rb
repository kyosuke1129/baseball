class PlayersController < ApplicationController

  def new
  end

  def create
    Player.create(player_params)
    
  end

  def edit
  end

  def show
  end

  def update
  end

  private
  def player_params
    params.permit(:name, :at_bat, :hand, :number)
  end
end



class SettingsController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    redirect_to edit_team_setting_path(@team, @team.setting) if @team.setting
    @setting = Setting.new
  end

  def create
    @setting = Setting.create(setting_params)
    redirect_to controller: :teams, action: :show, id: params[:team_id]

  end

  def edit
    @team = Team.find(params[:team_id])
    @setting = @team.setting
  end

  def update
    @setting = Setting.find(params[:id])
    @setting.update(setting_params)
    redirect_to controller: :teams, action: :show, id: params[:team_id] 
  end
end

 def setting_params
    
    params.require(:setting).permit( :hit, :two_base_hit, :three_base_hit, :home_run, :walks, :steal, :stolen_base, :sacrificefly, :bunt, :struck_out, :score, :double_play, :catching_killing, :defensive_opportunity, :error, :ball_counts, :average, :on_base_percentage, :sulluging_percentage, :ops, :success_rate, :double_play  ).merge(team_id: params[:team_id])
  end
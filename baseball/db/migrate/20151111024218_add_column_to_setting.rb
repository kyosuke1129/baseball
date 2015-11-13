class AddColumnToSetting < ActiveRecord::Migration
  def change
      add_column :settings, :team_id, :integer
      add_column :settings, :double_play, :integer
      add_column :settings, :error, :integer
  end
end

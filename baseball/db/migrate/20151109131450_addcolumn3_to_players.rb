class Addcolumn3ToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :bunt, :integer
  end
end

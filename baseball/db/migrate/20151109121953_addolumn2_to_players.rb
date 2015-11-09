class Addolumn2ToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :sacrificefly, :integer
    add_column :players, :error, :integer
  end
end

class AddolumnToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :ball_counts, :integer
    add_column :players, :steal, :integer
    add_column :players, :stolen_base, :integer
    add_column :players, :grounder, :integer
    add_column :players, :liner, :integer
  
  end
end

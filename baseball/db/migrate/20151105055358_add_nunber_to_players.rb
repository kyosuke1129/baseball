class AddNunberToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :at_bat, :string
    add_column :players, :number, :integer
    add_column :players, :hand, :string
    add_column :players, :at_bats, :integer
    add_column :players, :hit, :integer
    add_column :players, :two_base_hit, :integer
    add_column :players, :three_base_hit, :integer
    add_column :players, :home_run, :integer
    add_column :players, :walks, :integer
    add_column :players, :struck_out, :integer
    add_column :players, :score, :integer
    add_column :players, :double_play, :integer



  end
end

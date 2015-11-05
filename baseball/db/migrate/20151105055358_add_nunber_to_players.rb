class AddNunberToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :at_bat, :string
    add_column :players, :number, :integer
    add_column :players, :hand, :string

  end
end

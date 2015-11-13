class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :hit
      t.integer :two_base_hit
      t.integer :three_base_hit
      t.integer :home_run
      t.integer :walks
      t.integer :steal
      t.integer :stolen_base
      t.integer :sacrificefly
      t.integer :bunt
      t.integer :struck_out
      t.integer :score
      t.integer :catching_killing
      t.integer :defensive_opportunity
      t.integer :ball_count
      t.integer :average
      t.integer :on_base_percentage
      t.integer :sulluging_percentage
      t.integer :ops
      t.integer :success_rate

      t.timestamps 
    end
  end
end
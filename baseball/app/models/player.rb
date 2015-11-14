class Player < ActiveRecord::Base

  belongs_to :team



  def p_at_bats
   (self.at_bats - self.walks  -  self.sacrificefly - self.bunt) if bunt &&walks && sacrificefly && at_bats
  end


  def average
     (self.hit * 1000 / p_at_bats) if hit
  end

  def on_base_percentage
     (self.hit + self.walks ) * 1000 / (p_at_bats + walks) if hit && walks 
  end

  def base_hit
    hit + two_base_hit + 2 * three_base_hit + 3 * home_run if two_base_hit && three_base_hit && home_run
  end

  def sulluging_percentage
    base_hit * 1000 / p_at_bats if base_hit
  end

  def ops
    on_base_percentage + sulluging_percentage if on_base_percentage
  end

  def success_rate
    stolen_base * 1000 / steal if steal && stolen_base && steal != 0
  end








end

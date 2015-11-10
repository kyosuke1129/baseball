class Player < ActiveRecord::Base

  belongs_to :team

  def p_at_bats
   self.at_bats - self.walks  -  self.sacrificefly - self.bunt
  end


  def average
     self.hit * 1000 / p_at_bats
  end

  def on_base_percentage
     (self.hit + self.walks ) * 1000 / (p_at_bats + walks)
  end

  def base_hit
    hit + two_base_hit + 2 * three_base_hit + 3 * home_run
  end

  def sulluging_percentage
    base_hit * 1000 / p_at_bats
  end

  def ops
    on_base_percentage + sulluging_percentage
  end





end

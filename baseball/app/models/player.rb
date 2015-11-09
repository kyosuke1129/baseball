class Player < ActiveRecord::Base

  belongs_to :team

  def average
    average = (self.hit * 1000 / (self.at_bats - self.walks - self.sacrificefly))
  end

  def on_base_percentage
    on_base_percentage = ((self.hit + self.walks ) * 1000 / self.at_bats - sacrificefly)
  end

end

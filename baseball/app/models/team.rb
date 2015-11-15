class Team < ActiveRecord::Base

  belongs_to :user
  has_many :players
  has_one :setting


  def total_hits
    total_hits = 0
    players = self.players.all
    players.each do |player| 
      total_hits = player.hit + total_hits if player.hit != nil
     end
     return total_hits
   end

   def total_at_bats
    total_at_bats = 0
    players = self.players.all
    players.each do |player| 
      total_at_bats = player.at_bats + total_at_bats if player.at_bats != nil
     end
     return total_at_bats
   end

   def total_home_runs
    total_home_runs = 0
    players = self.players.all
    players.each do |player| 
      total_home_runs = player.home_run + total_home_runs if player.home_run != nil
     end
     return total_home_runs
   end

   def total_two_base_hits
    total_two_base_hits = 0
    players = self.players.all
    players.each do |player| 
      total_two_base_hits = player.two_base_hit + total_two_base_hits if player.two_base_hit != nil
     end
     return total_two_base_hits
   end

   def total_three_base_hits
    total_three_base_hits = 0
    players = self.players.all
    players.each do |player| 
      total_three_base_hits = player.three_base_hit + total_three_base_hits if player.three_base_hit != nil
     end
     return total_three_base_hits
   end

   def total_walks
    total_walks = 0
    players = self.players.all
    players.each do |player| 
      total_walks = player.walks + total_walks if player.walks != nil
     end
     return total_walks
   end

    def total_bunts
      total_bunts = 0
      players = self.players.all
      players.each do |player| 
        total_bunts = player.bunt + total_bunts if player.bunt != nil
    end
     return total_bunts
   end

    def total_sacrificeflys
      total_sacrificeflys = 0
      players = self.players.all
      players.each do |player| 
        total_sacrificeflys = player.sacrificefly + total_sacrificeflys if player.sacrificefly != nil
    end
     return total_bunts
   end

    def total_catching_killings
      total_catching_killings = 0
      players = self.players.all
      players.each do |player| 
        total_catching_killings = player.catching_killing + total_catching_killings if player.catching_killing != nil
    end
     return total_catching_killings
   end

    def total_defensive_opportunitys
      total_defensive_opportunitys = 0
      players = self.players.all
      players.each do |player| 
        total_defensive_opportunitys = player.defensive_opportunity + total_defensive_opportunitys if player.defensive_opportunity != nil
    end
     return total_defensive_opportunitys
   end

   def total_steals
      total_steals = 0
      players = self.players.all
      players.each do |player| 
        total_steals = player.steal + total_steals if player.steal != nil
    end
     return total_steals
   end

   def total_stolen_bases
      total_stolen_bases = 0
      players = self.players.all
      players.each do |player| 
        total_stolen_bases = player.stolen_base + total_stolen_bases if player.stolen_base != nil
    end
     return total_stolen_bases
   end

    def total_scores
      total_scores = 0
      players = self.players.all
      players.each do |player| 
        total_scores = player.score + total_scores if player.score != nil
    end
     return total_scores
   end

    def total_struck_outs
      total_struck_outs = 0
      players = self.players.all
      players.each do |player| 
        total_struck_outs = player.struck_out + total_struck_outs if player.struck_out != nil
    end
     return total_struck_outs
   end

  def t_at_bats
   (total_at_bats - total_walks - total_sacrificeflys - total_bunts) if total_bunts && total_walks && total_sacrificeflys && total_at_bats
  end


  def averages
     (total_hits * 1000 / t_at_bats) if total_hits
  end

  def on_base_percentages
     (total_hits + total_walks ) * 1000 / (t_at_bats + total_walks) if total_hits && total_walks
  end

  def base_hits
    total_hits + total_two_base_hits + 2 * total_three_base_hits + 3 * total_home_runs if total_two_base_hits && total_three_base_hits && total_home_runs
  end

  def sulluging_percentages
    base_hits * 1000 / t_at_bats if base_hits
  end

  def total_ops
    on_base_percentages + sulluging_percentages if on_base_percentages
  end

  def success_rates
    total_stolen_bases * 1000 / total_steals if total_steals && total_stolen_bases && total_steals != 0
  end
end

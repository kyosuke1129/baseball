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

   def total_home_run
    total_home_run = 0
    players = self.players.all
    players.each do |player| 
      total_home_run = player.home_run + total_home_run if player.home_run != nil
     end
     return total_home_run
   end

   def total_two_base_hit
    total_two_base_hit = 0
    players = self.players.all
    players.each do |player| 
      total_two_base_hit = player.two_base_hit + total_two_base_hit if player.two_base_hit != nil
     end
     return total_two_base_hit
   end

   def total_three_base_hit
    total_three_base_hit = 0
    players = self.players.all
    players.each do |player| 
      total_three_base_hit = player.three_base_hit + total_three_base_hit if player.three_base_hit != nil
     end
     return total_three_base_hit
   end

   def total_walks
    total_walks = 0
    players = self.players.all
    players.each do |player| 
      total_walks = player.walks + total_walks if player.walks != nil
     end
     return walks
   end

def total_bunt
    total_bunt = 0
    players = self.players.all
    players.each do |player| 
      total_bunt = player.bunt + total_bunt if player.bunt != nil
     end
     return total_bunt
   end
   
end

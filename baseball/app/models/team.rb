class Team < ActiveRecord::Base

  belongs_to :user
  has_many :players
  has_one :setting
end

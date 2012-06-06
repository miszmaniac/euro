class Match < ActiveRecord::Base
  attr_accessible :score1, :score2, :team1, :team2

  has_many :bets, :dependent => :destroy
  
  validates :team1, :presence => true
  validates :team2, :presence => true

                        
end

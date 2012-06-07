class Match < ActiveRecord::Base
  attr_accessible :score1, :score2, :team1, :team2, :betsend, :matchtime

  has_many :bets, :dependent => :destroy
  has_many :users, :through => :bets

  
  validates :team1, :presence => true
  validates :team2, :presence => true
  validates :betsend, :presence => true

                        
end

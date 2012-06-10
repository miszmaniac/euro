class Match < ActiveRecord::Base
  attr_accessible :score1, :score2, :team1_id, :team2_id, :betsend, :matchtime

  has_many :bets, :dependent => :destroy
  has_many :users, :through => :bets
  
  belongs_to :team1, :class_name => "Team", :foreign_key => "team1_id"
  belongs_to :team2, :class_name => "Team", :foreign_key => "team2_id"

  
  validates :team1_id, :presence => true
  validates :team2_id, :presence => true
  validates :betsend, :presence => true

  

  def name
    "#{team1.name} - #{team2.name}"  
  end
  
  def finished?
    matchtime < Time.now
  end
  
  def betsfinished?
    betsend < Time.now
  end
  
  def score
    "#{score1} - #{score2}" unless score1.nil?
  end     
  
  def result
    result = score1.to_i - score2.to_i 
    if result > 0 
      return 1
    elsif result < 0
      return 2
    else 
      return 0
    end
  end
    
  def average_score 
    unless bets.empty?
      "#{bets.average('score1').round} - #{bets.average('score2').round}"
    end 
  end   
  
  def average_score?
    !bets.empty?
  end
end

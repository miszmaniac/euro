class Team < ActiveRecord::Base
  attr_accessible :name

  belongs_to :group

  has_many :as_team1, :class_name => "Match", :foreign_key => "team1_id"
  has_many :as_team2, :class_name => "Match", :foreign_key => "team2_id"
  
  def matches
    Match.find(:all, :conditions => ['team1_id = ? or team2_id = ?', id, id])
  end
  
  def matches_played
    Match.find(:all, :conditions => ['(team1_id = ? or team2_id = ?) and matchtime < ?', id, id, Time.now]).count
  end
  
  def goals_scored
   as_team1.sum(&:score1) + as_team2.sum(&:score2)
 end

  
  def goals_lost
    as_team1.sum(&:score2) + as_team2.sum(&:score1)
  end
end

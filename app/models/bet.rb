class Bet < ActiveRecord::Base
  belongs_to :match
  belongs_to :user
  attr_accessible :score1, :score2, :user_id

  validates :score1, :presence => true
  validates :score2,  :presence => true
  validates :user_id, :presence => true
  
  def score
    "#{score1} - #{score2}"
  end
end

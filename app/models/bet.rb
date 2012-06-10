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

  def result
    result = score1 - score2
    if result > 0
    return 1
    elsif result < 0
    return 2
    else
    return 0
    end
  end

  def result_hit?
    match.result == result
  end

  def score_hit?
    match.score1 == score1 && match.score2 == score2
  end

  def points
    points = 0
    if result_hit?
      points += 1
      if score_hit?
        points += 3
      elsif
        diff = (match.score1 - score1).abs + (match.score2 - score2).abs
        if diff < 3
          points += 3 - diff
        end
      end
    end
    return points
  end
end

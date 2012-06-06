class Bet < ActiveRecord::Base
  belongs_to :match
  attr_accessible :score1, :score2, :user
end

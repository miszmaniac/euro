class StaticController < ApplicationController
  def index
    if signed_in?
      @bets = current_user.bets
      @next_matches = Match.where("matchtime > ?", Time.now).order("matchtime ASC")
    end
  end
end

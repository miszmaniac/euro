class BetsController < ApplicationController

  def create
    @match = Match.find(params[:match_id])
    @bet = @match.bets.create(params[:bet])
    redirect_to match_path(@match)
  end

end

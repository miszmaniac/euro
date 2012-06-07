class BetsController < ApplicationController

  def create
    @match = Match.find(params[:match_id])
    @bet = @match.bets.build(params[:bet])
    @bet.user_id = current_user.id
    @bet.save
    redirect_to match_path(@match)
  end

end

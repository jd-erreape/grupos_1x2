class Rounds::BetsController < InheritedResources::Base

  protected

  def collection
    round = Round.find(params[:round_id])
    @bets ||= current_user.bets_for_round(round)
  end

end
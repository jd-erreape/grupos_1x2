class Rounds::BetsController < InheritedResources::Base

  def index
    index! do
      p "*"*100, response
    end
  end

  protected

  def collection
    round = Round.find(params[:round_id])
    @bets ||= current_user.bets_for_round(round)
  end

end
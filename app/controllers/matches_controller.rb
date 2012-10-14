class MatchesController < InheritedResources::Base

  before_filter :load_users_overall_selections

  respond_to :js, :only => [:show]

  def load_users_overall_selections
    @voted_1 = resource.bets.voted_1.length
    @voted_X = resource.bets.voted_X.length
    @voted_2 = resource.bets.voted_2.length
  end

end
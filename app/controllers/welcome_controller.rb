class WelcomeController < ApplicationController

  before_filter :load_old_bet_data, :only => [:index]
  before_filter :load_new_bet_data, :only => [:reload_matches]
  before_filter :load_matches

  def reload_matches
    render 'index'
  end

  protected

  def load_old_bet_data
    @bet_data = BetBuilder.new
  end

  def load_new_bet_data
    @bet_data = BetBuilder.new(true)
  end

  def load_matches
    @matches = @bet_data.matches
  end

end
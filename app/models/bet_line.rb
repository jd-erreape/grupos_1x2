class BetLine < ActiveRecord::Base
  belongs_to :bet
  belongs_to :match

  attr_accessible :selected_result, :match

  def guessed?
    selected_result == match.result
  end
end
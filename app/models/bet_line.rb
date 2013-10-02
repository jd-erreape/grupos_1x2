class BetLine
  attr_accessor :selected_result, :match_id, :bet

  def initialize(args={})
    @selected_result = args[:selected_result]
    @match_id = args[:match_id] || args[:match] && args[:match].is_a?(Match) && args[:match].id
    @bet = args[:bet]
  end

  def guessed?
    selected_result == match.result
  end

  def match
    Match.find(match_id)
  end

  def match=(match)
    @match_id = match.id
  end
end
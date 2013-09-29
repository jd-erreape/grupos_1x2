require 'spec_helper'

describe Bet do
  describe 'Obtain number of guesses' do
    it 'will count the guessed bet lines' do
      bet = Bet.new
      bet.bet_lines = [
          BetLine.new(selected_result: Match::RESULT_1, match: Match.new(result: Match::RESULT_1)),
          BetLine.new(selected_result: Match::RESULT_1, match: Match.new(result: Match::RESULT_2)),
          BetLine.new(selected_result: Match::RESULT_X, match: Match.new(result: Match::RESULT_2)),
          BetLine.new(selected_result: Match::RESULT_X, match: Match.new(result: Match::RESULT_X)),
          BetLine.new(selected_result: Match::RESULT_2, match: Match.new(result: Match::RESULT_2))
      ]
      bet.guessed.count.should == 3
    end
  end
end

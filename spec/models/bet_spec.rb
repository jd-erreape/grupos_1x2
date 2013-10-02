require 'spec_helper'

describe Bet do

  describe 'bet_lines serialization' do
    let(:bet) do
      Bet.make!(bet_lines: [
        BetLine.new,
        BetLine.new
      ])
    end
    it 'store correctly the bet_lines array' do
      bet.reload
      bet.bet_lines.is_a?(Array)
      bet.bet_lines.count.should eq(2)
      bet.bet_lines[0].is_a?(BetLine)
    end
  end

  describe '#guessed' do
    it 'will count the guessed bet lines' do
      bet = Bet.new
      bet.bet_lines = [
        BetLine.new(selected_result: Match::RESULT_1, match: Match.make!(result: Match::RESULT_1)),
        BetLine.new(selected_result: Match::RESULT_1, match: Match.make!(result: Match::RESULT_2)),
        BetLine.new(selected_result: Match::RESULT_X, match: Match.make!(result: Match::RESULT_2)),
        BetLine.new(selected_result: Match::RESULT_X, match: Match.make!(result: Match::RESULT_X)),
        BetLine.new(selected_result: Match::RESULT_2, match: Match.make!(result: Match::RESULT_2))
      ]
      bet.guessed.count.should == 3
    end
  end
end

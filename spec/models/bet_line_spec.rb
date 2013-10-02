require 'spec_helper'

describe Match do
  describe '#guessed?' do
    let(:match) do
      Match.make!(
          result: Match::RESULT_1
      )
    end

    it 'will be correct if the selected value is the same that the result value' do
      BetLine.new(
          selected_result: Match::RESULT_1,
          match: match
      ).guessed?.should be_true
    end

    it 'wont be correct if the selected value is not the same that the result value' do
      BetLine.new(
          selected_result: Match::RESULT_2,
          match: match
      ).guessed?.should be_false
    end
  end
end
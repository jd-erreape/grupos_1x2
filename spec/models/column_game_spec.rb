require 'spec_helper'

describe Game do
  describe '#guessed?' do
    let(:game) do
      Game.new(
          result: Game::RESULT_1
      )
    end

    it 'will be correct if the selected value is the same that the result value' do
      ColumnGame.new(
          selected_result: Game::RESULT_1,
          game: game
      ).guessed?.should be_true
    end

    it 'wont be correct if the selected value is not the same that the result value' do
      ColumnGame.new(
          selected_result: Game::RESULT_2,
          game: game
      ).guessed?.should be_false
    end
  end
end
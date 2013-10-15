require 'spec_helper'

describe Column do
  describe '#guessed' do
    it 'will count the guessed column games' do
      column = Column.new
      column.column_games = [
          ColumnGame.new(selected_result: Game::RESULT_1, game: Game.new(result: Game::RESULT_1)),
          ColumnGame.new(selected_result: Game::RESULT_1, game: Game.new(result: Game::RESULT_2)),
          ColumnGame.new(selected_result: Game::RESULT_X, game: Game.new(result: Game::RESULT_2)),
          ColumnGame.new(selected_result: Game::RESULT_X, game: Game.new(result: Game::RESULT_X)),
          ColumnGame.new(selected_result: Game::RESULT_2, game: Game.new(result: Game::RESULT_2))
      ]
      column.guessed.count.should == 3
    end
  end
end

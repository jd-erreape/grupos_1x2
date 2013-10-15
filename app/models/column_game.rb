class ColumnGame < ActiveRecord::Base
  belongs_to :column
  belongs_to :game

  attr_accessible :selected_result, :game

  def guessed?
    selected_result == game.result
  end
end
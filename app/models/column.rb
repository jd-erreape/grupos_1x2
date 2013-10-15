class Column < ActiveRecord::Base
  has_many :column_games
  belongs_to :round

  def guessed
    column_games.select { |game| game.guessed? }
  end
end

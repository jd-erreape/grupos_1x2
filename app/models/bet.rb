class Bet < ActiveRecord::Base
  has_many :bet_lines
  belongs_to :round

  def guessed
    bet_lines.select { |bet_line| bet_line.guessed? }
  end
end

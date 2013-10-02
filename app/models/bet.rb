require_dependency 'bet_line'

class Bet < ActiveRecord::Base
  belongs_to :round

  serialize :bet_lines

  def guessed
    bet_lines.select { |bet_line| bet_line.guessed? }
  end
end

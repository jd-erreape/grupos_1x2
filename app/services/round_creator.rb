class RoundCreator
  attr_accessor :games, :round_number

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def create
    round = Round.create(number: @round_number)
    @games.each do |game|
      round.games.create(home_team: game[0], away_team: game[1])
    end
    round
  end
end
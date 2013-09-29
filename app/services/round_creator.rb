class RoundCreator
  attr_accessor :matches, :round_number

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def create
    round = Round.create(number: @round_number)
    @matches.each do |match|
      round.matches.create(home_team: match[0], away_team: match[1])
    end
    round
  end
end
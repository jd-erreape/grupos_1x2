class RoundGamesArrayProcessor
  def initialize(team_pairs_array)
    @team_pairs_array = team_pairs_array
  end

  def process
    result_array = []
    @team_pairs_array.each do |team_pair|
      result_array << [
          Team.new(name: team_pair[0]),
          Team.new(name: team_pair[1])
      ]
    end
    result_array
  end
end
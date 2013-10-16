require 'spec_helper'

describe RoundCreator do
  describe '#create' do
    it 'create each match' do
      round = RoundCreator.new(
        {
          round_number: 1,
          games: games_array
        }
      ).create
      assert_games_have_been_created round
    end
  end

  def assert_games_have_been_created(round)
    round.games.count.should == 3
    round.games[0].home_team.name.should == 'Real Madrid FC'
    round.games[0].away_team.name.should == 'FC Barcelona'
    round.games[1].home_team.name.should == 'Sevilla FC'
    round.games[1].away_team.name.should == 'Malaga FC'
    round.games[2].home_team.name.should == 'At. Madrid'
    round.games[2].away_team.name.should == 'Ath. Bilbao'
  end

  def games_array
    [
      [Team.new(name: 'Real Madrid FC'), Team.new(name: 'FC Barcelona')],
      [Team.new(name: 'Sevilla FC'), Team.new(name: 'Malaga FC')],
      [Team.new(name: 'At. Madrid'), Team.new(name: 'Ath. Bilbao')]
    ]
  end
end

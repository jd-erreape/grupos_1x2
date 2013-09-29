require 'spec_helper'

describe RoundCreator do
  describe 'create a round' do
    it 'will create each match' do
      round = RoundCreator.new(
          {
              round_number: 1,
              matches: match_array
          }
      ).create
      round.matches.count.should == 3
      round.matches[0].home_team.name.should == 'Real Madrid FC'
      round.matches[0].away_team.name.should == 'FC Barcelona'
      round.matches[1].home_team.name.should == 'Sevilla FC'
      round.matches[1].away_team.name.should == 'Malaga FC'
      round.matches[2].home_team.name.should == 'At. Madrid'
      round.matches[2].away_team.name.should == 'Ath. Bilbao'
    end
  end

  def match_array
    [
        [Team.create(name: 'Real Madrid FC'), Team.create(name: 'FC Barcelona')],
        [Team.create(name: 'Sevilla FC'), Team.create(name: 'Malaga FC')],
        [Team.create(name: 'At. Madrid'), Team.create(name: 'Ath. Bilbao')]
    ]
  end
end

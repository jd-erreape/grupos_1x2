require 'spec_helper'

describe RoundMatchesArrayProcessor do
  describe '#process' do
    it 'returns a Team array' do
      processed_array = RoundMatchesArrayProcessor.new(
        team_pairs
      ).process
      assert_team_array_is_correct processed_array
    end
  end

  it 'dont create a Team if it already exists' do
    Team.create(name: 'Real Madrid')
    Team.count.should == 1
    RoundMatchesArrayProcessor.new(
      team_pairs
    ).process
    Team.count.should == 6
  end

  def assert_team_array_is_correct(processed_array)
    processed_array.each do |array_elem|
      array_elem[0].is_a?(Team).should be_true
      array_elem[1].is_a?(Team).should be_true
    end
    processed_array[0][0].name.should == 'Real Madrid'
    processed_array[0][1].name.should == 'Barcelona'
    processed_array[1][0].name.should == 'Malaga'
    processed_array[1][1].name.should == 'Sevilla'
    processed_array[2][0].name.should == 'At Madrid'
    processed_array[2][1].name.should == 'Betis'
  end

  def team_pairs
    [
      ['Real Madrid', 'Barcelona'],
      ['Malaga', 'Sevilla'],
      ['At Madrid', 'Betis']
    ]
  end
end

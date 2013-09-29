require 'spec_helper'

describe RoundMatchesArrayProcessor do
  describe 'process a pairs array' do
    it 'will returns a Team array' do
      processed_array = RoundMatchesArrayProcessor.new(
          team_pairs
      ).process
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
  end

  it 'wont create a Team if it already exists' do
    Team.create(name: 'Real Madrid')
    Team.count.should == 1
    RoundMatchesArrayProcessor.new(
        team_pairs
    ).process
    Team.count.should == 6
  end

  def team_pairs
    [
        ['Real Madrid', 'Barcelona'],
        ['Malaga', 'Sevilla'],
        ['At Madrid', 'Betis']
    ]
  end
end

require 'spec_helper'

describe BetBuilder do

  describe 'Building a bet' do

    it 'should create 15 matches' do
      bet_build = BetBuilder.new(true)
      bet_build.matches.length.should == 15
    end

  end

end

require 'spec_helper'

describe UserBetChecker do
  before(:each) do
    let(match){Match.new}
  end
  describe '#bet_for_match' do
    it 'return nil if there is no bet for the match' do
      UserBetChecker.new(match, nil).bet_for_match.should eq(nil)
    end

    it 'return the bet for the match'
  end
  
  describe '#bet_for_round' do
    it 'return nil if there is no bet for the round'
    it 'return the bet for the round'
  end

  describe '#bet_for_match?' do
    it 'check if there is a bet for the match'
  end

  describe '#bet_for_round?' do
    it 'check if there is a bet for the round'
  end
end

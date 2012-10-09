require 'spec_helper'

describe BetDataAccessor do

  describe 'Initializing the Bet Data Accessor' do

    it 'should set the Bet Data Url' do
      url = 'http://url_para_cargar_los_datos'
      bet_data_accessor = BetDataAccessor.new(:bet_data_url => url)
      bet_data_accessor.bet_data_url.should == url
    end

  end

  describe 'Loading Bet Data' do

    before(:each) do
      bet_data_accessor = BetDataAccessor.new(:bet_data_url => BET_DATA_URL)
      @bet_data = bet_data_accessor.bet_data
    end

    it 'should load 15 bets' do
      @bet_data.length.should == 15
    end

    it 'should load correct string names into the bet' do
      @bet_data.each {|match_item| match_item[0].class.should == String; match_item[1].class.should == String }
    end

  end

end

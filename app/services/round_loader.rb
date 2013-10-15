# This class will retrieve the matches given an accessor and will return a bet with those matches
module RoundLoader
  def self.load!(round_reader_klass=RoundReaders::AsScrappingRoundReader)
    Round.transaction do
      round_reader = round_reader_klass.new
      round_games = RoundGamesArrayProcessor.new(round_reader.round_data).process
      RoundCreator.new(
          round_number: 1,
          games: round_games
      ).create
    end
  end
end

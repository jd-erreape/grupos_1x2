# This class will retrieve the matches given an accessor and will return a bet with those matches
module RoundLoader
  def self.load_round(round_reader_klass=RoundReaders::AsScrappingRoundReader)
    Round.transaction do
      round_reader = round_reader_klass.new
      round_matches = RoundMatchesArrayProcessor.new(round_reader.round_data).process
      RoundCreator.new(
          round_number: 1,
          matches: round_matches
      ).create
    end
  end
end

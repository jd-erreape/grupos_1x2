require 'acceptance/api_spec_helper'

resource 'Columns' do
  header 'Accept', 'application/json'

  let(:current_column) { Column.make! }
  let(:current_column_games) { column_games_for(current_column) }

  get '/api/columns/:id' do
    parameter :id, 'Id for the column we want to retrieve'
    required_parameters :id

    before { current_column_games }

    example 'Get a column' do

      do_request(id: current_column.id)

      status.should eq(200)

      column = parsed_response['column']
      column_games = parsed_response['column_games']['array']

      # Expectations over the column
      expect(column['id']).to eq(current_column.id)

      # Expectations over the column games
      expect(column_games.count).to eq(15)

      third_match = current_column_games[3]
      third_response_match = column_games[3]

      expect(third_response_match['id']).to_not be_blank
      expect(third_response_match['id']).to eq(third_match.id)
      expect(third_response_match['home_team']).to_not be_blank
      expect(third_response_match['home_team']).to eq(third_match.game.home_team.name)
      expect(third_response_match['away_team']).to_not be_blank
      expect(third_response_match['away_team']).to eq(third_match.game.away_team.name)

      # We want to retrieve something like:
      #
      #
      # column: {
      #   id: 1,
      #   column_games: [3,4,5,2,7...]
      # }
      #
      # column_games: [
      #   {
      #     id: 3,
      #     home_team: 'Real Madrid',
      #     away_team: 'Malaga FC',
      #     selected_result: '1',
      #     final_result: '2',
      #     guessed: false
      #   },
      #   {
      #     id: 4,
      #     home_team: 'At. Madrid',
      #     away_team: 'Villareal',
      #     selected_result: '1',
      #     final_result: '1',
      #     guessed: true
      #   },
      #   ...
      # ]
    end

    example 'Get a non existent column' do
      do_request(id: current_column.id + 1)

      status.should eq(404)
      expect(parsed_response['error']).to eq('Column not found')
    end


  end

  def column_games_for(column)
    @column_games ||= 15.times.map do
      ColumnGame.make!(
        column: column,
        game: Game.make!
      )
    end
  end
end

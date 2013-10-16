json.column do
  json.partial! 'column', column: @column
end

json.column_games do
  json.array column_games do |column_game|
    json.partial! 'api/column_games/column_game', column_game: column_game
  end
end

class RenameStuff < ActiveRecord::Migration
  def change
    rename_table :bets, :columns
    rename_table :bet_lines, :column_games
    rename_column :column_games, :bet_id, :column_id

    rename_table :matches, :games
    rename_column :column_games, :match_id, :game_id
  end
end

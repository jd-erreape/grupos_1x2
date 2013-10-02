class AddBetLinesFieldToBet < ActiveRecord::Migration
  def change
    add_column :bets, :bet_lines, :text
  end
end

class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :round
      t.integer :home_team_id
      t.integer :away_team_id
      t.string :result

      t.timestamps
    end
    add_index :matches, :round_id
    add_index :matches, :home_team_id
    add_index :matches, :away_team_id
  end
end

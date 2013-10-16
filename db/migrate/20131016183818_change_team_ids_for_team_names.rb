class ChangeTeamIdsForTeamNames < ActiveRecord::Migration
  def change
    remove_column :games, :home_team_id
    remove_column :games, :away_team_id
    add_column :games, :home_team_name, :string
    add_column :games, :away_team_name, :string
  end
end

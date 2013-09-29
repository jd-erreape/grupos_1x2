class Match < ActiveRecord::Base
  RESULT_1 = '1'
  RESULT_X = 'X'
  RESULT_2 = '2'

  belongs_to :round
  belongs_to :home_team, class_name: Team, foreign_key: :home_team_id
  belongs_to :away_team, class_name: Team, foreign_key: :away_team_id

  attr_accessible :home_team, :away_team, :result
end

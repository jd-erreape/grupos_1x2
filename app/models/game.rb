class Game < ActiveRecord::Base
  RESULT_1 = '1'
  RESULT_X = 'X'
  RESULT_2 = '2'

  belongs_to :round

  attr_accessible :result, :home_team, :away_team

  # TODO TEST
  def teams
    @teams ||= [home_team, away_team]
  end

  # TODO TEST
  def home_team
    @home_team ||= Team.new(name: home_team_name)
  end

  # TODO TEST
  def away_team
    @away_team ||= Team.new(name: away_team_name)
  end

  # TODO TEST
  def home_team=(team)
    @home_team = team
    self.home_team_name = team.name
  end

  # TODO TEST
  def away_team=(team)
    @away_team = team
    self.away_team_name = team.name
  end
end

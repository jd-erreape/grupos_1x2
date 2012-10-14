class Match < ActiveRecord::Base

  has_many :match_teams, :dependent => :destroy
  has_many :teams, :through => :match_teams
  has_many :bets
  belongs_to :round

  attr_accessible :position

  scope :by_position, order('position ASC')

  def local_team
    match_teams.first.is_local? ? match_teams.first.team : match_teams.last.team
  end

  def visit_team
    !match_teams.first.is_local? ? match_teams.first.team : match_teams.last.team
  end

end

class MatchTeam < ActiveRecord::Base

  belongs_to :match
  belongs_to :team

  attr_accessible :is_local, :match, :team

end

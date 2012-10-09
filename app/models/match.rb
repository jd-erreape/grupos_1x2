class Match < ActiveRecord::Base

  has_many :match_teams, :dependent => :destroy
  has_many :teams, :through => :match_teams

  attr_accessible :position

end

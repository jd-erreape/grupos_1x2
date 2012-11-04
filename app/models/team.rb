class Team < ActiveRecord::Base

  has_many :match_teams, :dependent => :destroy
  has_many :matches, :through => :match_teams

  attr_accessible :name

  validates :name, :presence => true

end

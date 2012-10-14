class Bet < ActiveRecord::Base

  SELECTED_1 = 0
  SELECTED_X = 1
  SELECTED_2 = 2

  belongs_to :match
  belongs_to :user
  attr_accessible :selection, :match_id, :user_id

  scope :for_round, lambda { |round| joins(:match => :round).where('rounds.id = ?', round.id) }

  scope :voted_1, where(:selection => SELECTED_1)
  scope :voted_X, where(:selection => SELECTED_X)
  scope :voted_2, where(:selection => SELECTED_2)

end

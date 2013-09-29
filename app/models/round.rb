class Round < ActiveRecord::Base
  has_many :matches, dependent: :destroy
  has_many :bets, dependent: :destroy

  attr_accessible :number
end

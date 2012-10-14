class Round < ActiveRecord::Base

  has_many :matches

  attr_accessible :number

  scope :by_number, order('number ASC')

  def self.last_round
    by_number.last
  end



end

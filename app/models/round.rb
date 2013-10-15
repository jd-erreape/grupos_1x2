class Round < ActiveRecord::Base
  has_many :games, dependent: :destroy
  has_many :columns, dependent: :destroy

  attr_accessible :number
end

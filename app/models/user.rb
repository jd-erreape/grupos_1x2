class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :database_authenticatable, :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :bets

  def has_bet_for_match? match
    !bets.find_by_match_id(match.id).blank?
  end

  def bet_for_match match
    bets.find_by_match_id(match.id) || bets.build(:match_id => match.id)
  end

  def bets_for_round round
    round.matches.by_position.map { |match| bet_for_match(match) }
  end

end

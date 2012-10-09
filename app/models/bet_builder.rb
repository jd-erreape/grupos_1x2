class BetBuilder

  attr_accessor :bet_data, :matches, :destroy_matches

  def initialize(destroy_matches = false)
    @destroy_matches = destroy_matches
  end

  def matches
    @matches ||= load_matches
  end

  def load_matches
    @matches = @destroy_matches ? build_new_matches : Match.all
  end


  def build_new_matches
    Match.destroy_all
    load_bet_data
    matches = []
    @bet_data.each_with_index do |match_data, index|
      matches << build_match(match_data, index)
    end
    matches
  end

  def load_bet_data
    bet_data_accessor = BetDataAccessor.new(:bet_data_url => BET_DATA_URL)
    #bet_data solo debe cumplir el requisito de ser un array de 15 elementos, donde cada elemento es a su vez
    #un array con dos elementos, el nombre del equipo local y el nombre del equipo visitante
    @bet_data = bet_data_accessor.bet_data
  end

  def build_match match_data, index
    local_team = Team.find_by_name(match_data[0])
    if local_team.blank?
      local_team = Team.create(:name => match_data[0])
    end
    visit_team = Team.find_by_name(match_data[1])
    if visit_team.blank?
      visit_team = Team.create(:name => match_data[1])
    end
    match = Match.create(:position => index)
    MatchTeam.create(:match => match, :is_local => true, :team => local_team)
    MatchTeam.create(:match => match, :is_local => false, :team => visit_team)
    match
  end


end
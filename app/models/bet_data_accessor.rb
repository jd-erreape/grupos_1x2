class BetDataAccessor

  attr_accessor :bet_data_url, :loaded_bet_data

  #Inicializacion del objeto
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def bet_data_loaded?
    @loaded_bet_data.blank?
  end

  def bet_data
    @loaded_bet_data ||= read_bet_data
  end

  private

  def read_bet_data
    agent = get_page_agent
    matches = load_matches agent
    matches
  end

  def get_page_agent
    agent = Mechanize.new
    agent.get(@bet_data_url)
    agent
  end

  def load_matches agent
    matches = []
    table_rows = get_table_rows(agent)
    table_rows.each do |table_row|
      matches << process_table_row(table_row)
    end
    matches
  end

  def get_table_rows agent
    agent.page.search(" .cont_tabla_carrusel table.tab_quiniela tbody tr")
  end

  def process_table_row table_row
    local_team_name = visit_team_name = nil
    table_row.children.each_with_index do |table_item, index|
      local_team_name = table_item.text if index%6 == 2
      visit_team_name = table_item.text if index%6 == 4
    end
    [local_team_name, visit_team_name]
  end


end
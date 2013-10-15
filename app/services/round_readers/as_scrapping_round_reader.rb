class RoundReaders::AsScrappingRoundReader
  ROUND_DATA_URL ="http://www.as.com/quiniela/"

  def round_data
    @loaded_round_data ||= read_round_data
  end

  private

  def read_round_data
    agent = get_page_agent
    load_games(agent)
  end

  def get_page_agent
    agent = Mechanize.new
    agent.get(ROUND_DATA_URL)
    agent
  end

  def load_games(agent)
    get_table_rows(agent).collect do |table_row|
      process_table_row(table_row)
    end
  end

  def get_table_rows(agent)
    agent.page.search(' .cont_tabla_carrusel table.tab_quiniela tbody tr')
  end

  def process_table_row(table_row)
    [table_row.css('.equipo')[0].text, table_row.css('.equipo')[1].text]
  end


end

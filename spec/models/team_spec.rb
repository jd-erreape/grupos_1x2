require 'spec_helper'

describe Team do

  it {should have_many(:match_teams).dependent(:destroy)}
  it {should have_many(:matches).through(:match_teams)}

end

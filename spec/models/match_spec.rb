require 'spec_helper'

describe Match do

  it { should have_many(:match_teams).dependent(:destroy) }
  it { should have_many(:teams).through(:match_teams) }

end

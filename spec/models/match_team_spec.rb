require 'spec_helper'

describe MatchTeam do

  it {should belong_to(:team)}
  it {should belong_to(:match)}

end

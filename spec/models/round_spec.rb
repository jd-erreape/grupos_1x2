require 'spec_helper'

describe Round do
  it { should have_many(:games).dependent(:destroy) }
end

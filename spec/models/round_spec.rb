require 'spec_helper'

describe Round do
  it { should have_many(:matches).dependent(:destroy) }
end

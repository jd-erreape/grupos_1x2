class Team
  attr_accessor :name

  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
end

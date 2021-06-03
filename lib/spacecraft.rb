class Spacecraft
  attr_reader :name,
              :fuel,
              :requirements
  def initialize(craft_info)
    @name = craft_info[:name]
    @fuel = craft_info[:fuel]
    @requirements = []
  end

  def add_requirement(spec_and_yrs_exp)
    @requirements << spec_and_yrs_exp
  end
end
